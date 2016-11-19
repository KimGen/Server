FROM ubuntu:16.04

RUN apt-get update && apt-get install -y wget apt-utils && apt-get upgrade -y && apt-get -y autoremove

#install webserver base
RUN apt-get install -y apache2
RUN systemctl restart apache2
RUN apt-get install -y curl
RUN apt-get install -y mysql-server
RUN sudo apt-get install -y php libapache2-mod-php php-mcrypt php-mysql php-gd

# install git and curl
RUN apt-get install -y git curl php-curl openssl

RUN wget --no-check-certificate https://raw.githubusercontent.com/KimGen/platform/master/_one-click-installation/bootstrap.sh \
    && chmod +x bootstrap.sh && ./bootstrap.sh

RUN systemctl restart apache2
	
RUN rm -rf /var/lib/apt/lists/*