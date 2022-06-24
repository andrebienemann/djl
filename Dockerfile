FROM ubuntu

RUN apt update && apt upgrade -y

RUN apt install -y htop python3 pip git nano curl wget zsh

RUN pip install jupyterlab

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ENV SHELL=/usr/bin/zsh

CMD python3 -m jupyterlab --ip 0.0.0.0 --allow-root ~
