FROM rocker/tidyverse:latest

RUN apt-get update && apt-get install -y python3-pip && apt-get -y install python3-venv

RUN apt-get update && \
  install2.r --deps TRUE keras 

RUN su - rstudio -c "Rscript -e 'reticulate::virtualenv_create()' -e 'keras::install_keras()'"