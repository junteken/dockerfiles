#!/bin/bash
nvidia-docker run -it --rm -p 4000:4000 -p 8888:8888 -p 6006:6006 -p 7001:7001 -h beanzsoft \
 --name beanzsoft -v ~/:/home/beanzsoft/data \
--ipc=host beanzsoft/research:latest jupyter notebook \
--no-browser --ip=0.0.0.0 --allow-root \
--NotebookApp.token='Beanz65300382!' --notebook-dir='/home'
