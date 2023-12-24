# Dockerised JupyterLab

[![Docker Hub](https://img.shields.io/docker/stars/andrebienemann/djl.svg)](https://hub.docker.com/r/andrebienemann/djl)
[![Docker Hub](https://img.shields.io/docker/pulls/andrebienemann/djl.svg)](https://hub.docker.com/r/andrebienemann/djl)
[![Docker Hub](https://img.shields.io/docker/image-size/andrebienemann/djl.svg)](https://hub.docker.com/r/andrebienemann/djl)

DJL is an interactive development environment backed by JupyterLab and provisioned inside of a Docker container.

In addition to JupyterLab, it provides software for:
  - shell ([bash](https://www.gnu.org/software/bash/), [zsh](https://www.zsh.org/))
  - data transfer ([curl](https://curl.se/), [wget](https://www.gnu.org/software/wget/))
  - archiving ([tar](https://www.gnu.org/software/tar/), [zip](https://linux.die.net/man/1/zip), [unzip](https://linux.die.net/man/1/unzip))
  - package management ([apt](https://wiki.debian.org/Apt))
  - code editing ([nano](https://nano-editor.org/), [vim](https://www.vim.org/))
  - stream processing ([grep](https://www.gnu.org/software/grep/manual/grep.html), [sed](https://www.gnu.org/software/sed/manual/sed.html), [jq](https://stedolan.github.io/jq/))
  - system monitoring ([htop](https://htop.dev/))
  - build automation ([make](https://www.gnu.org/software/make/))
  - version control ([git](https://git-scm.com/))
  - proxy ([cntlm](https://cntlm.sourceforge.net/))

## Quick Start

With the command below, you can create an instance of DJL in a detached mode and publish it on the port *8888*.

```txt
docker run --detach --publish 8888:8888 --name <name> andrebienemann/djl
```

Access JupyterLab by following the URL provided in the container logs.

## Changing Port

If you intend to publish DJL on a different port, provide the port number through an environment.

```txt
--env JUPYTER_PORT=<port> --publish <port>:<port>
```

Ensure to substitute the placeholder *port* with it respective values.

## Links

- [Source Code](https://github.com/andrebienemann/djl/)
- [Issue Tracker](https://github.com/andrebienemann/djl/issues/)
