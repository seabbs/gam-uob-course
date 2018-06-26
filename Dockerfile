FROM rocker/tidyverse:3.5.0

RUN apt-get install -y \
    texlive-latex-recommended \
    texlive-fonts-extra \
    texinfo \
    libqpdf-dev \
    mesa-common-dev \
    libglu1-mesa-dev \
    && apt-get clean
    
ADD . /home/rstudio/gam-uob-course

WORKDIR /home/rstudio/gam-uob-course

RUN Rscript package-setup.R
