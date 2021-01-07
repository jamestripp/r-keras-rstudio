FROM rocker/rstudio:latest

RUN apt-get update && apt-get install -y python3-pip && apt-get -y install python3-venv

RUN apt-get update && \
  install2.r --deps TRUE keras 

RUN apt-get clean

RUN su - rstudio -c "Rscript -e 'reticulate::virtualenv_create()' -e 'keras::install_keras()'"