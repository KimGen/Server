FROM ubuntu:16.04

RUN apt-get update && apt-get install -y wget apt-utils && apt-get upgrade -y && apt-get -y autoremove

#install webserver base
RUN apt-get install -y apache2
RUN apt-get install -y php5

# install git and curl
RUN apt-get install -y git curl php5-curl openssl

RUN wget --no-check-certificate https://raw.githubusercontent.com/KimGen/platform/master/_one-click-installation/bootstrap.sh \
    && chmod +x bootstrap.sh && ./bootstrap.sh
	
RUN rm -rf /var/lib/apt/lists/*