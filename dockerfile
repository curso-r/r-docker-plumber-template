FROM rocker/tidyverse

COPY . /usr/local/src/myscripts
WORKDIR /usr/local/src/myscripts

# Install the C/C++ libraries needed to run the script
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    libssl-dev \
    libcurl4-openssl-dev \
    libxml2-dev

RUN Rscript 'install_packages.R'

EXPOSE 8080

# Execute the target script
CMD ["Rscript", "main.R"]
