FROM ubuntu

RUN apt update --fix-missing && apt upgrade -y

RUN apt install -y apt python3 pip git

RUN pip install jupyterlab

CMD python3 -m jupyterlab --ip 0.0.0.0 --allow-root ~
