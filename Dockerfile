ARG VERSION=3.11-slim

FROM python:${VERSION} AS base

RUN apt update && apt -y upgrade
RUN apt install -y gcc cntlm htop
RUN apt install -y make git vim nano
RUN apt install -y curl wget jq zip unzip

FROM base AS python

SHELL ["/bin/bash", "-c"]

RUN python3 -m venv ~/.venv
RUN source ~/.venv/bin/activate && pip install jupyterlab

FROM python AS zsh

RUN apt install -y zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ENV SHELL=/usr/bin/zsh

FROM zsh AS scripts

RUN mkdir /usr/local/etc/scripts
RUN echo -e "\nexport PATH=\$PATH:/usr/local/etc/scripts" >> ~/.bashrc
RUN echo -e "\nexport PATH=\$PATH:/usr/local/etc/scripts" >> ~/.zshrc

COPY scripts/configure-git.sh /usr/local/etc/scripts/configure-git
COPY scripts/configure-proxy.sh /usr/local/etc/scripts/configure-proxy
COPY scripts/configure-ssh.sh /usr/local/etc/scripts/configure-ssh
COPY scripts/configure-tz.sh /usr/local/etc/scripts/configure-tz
COPY scripts/configure.sh /usr/local/etc/scripts/configure

FROM scripts AS final

CMD source ~/.venv/bin/activate && python3 -m jupyterlab --ip 0.0.0.0 --allow-root ~

WORKDIR /root
