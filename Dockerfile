FROM ubuntu:16.04

RUN a2enmod rewrite

RUN apt-get update && apt-get upgrade && apt-get install --no-install-recommends -y \
		wget \
	&& rm -rf /var/lib/apt/lists/*

RUN curl -L https://raw.githubusercontent.com/KimGen/platform/master/_one-click-installation/bootstrap.sh \
    && chmod +x bootstrap.sh && sudo ./bootstrap.sh