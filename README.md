# Dockerised JupyterLab 

DJL is a JupyterLab provisioned inside of a Docker container.

## Quick Start

With the command below, you can create a Docker container in detached mode and publish it on port *8888*.

```txt
docker run --detach --publish 8888:8888 --name <name> andrebienemann/djl
```

Once created, open the URL with a web browser of your choice.
