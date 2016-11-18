FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade -y \
&& apt-get install --no-install-recommends -y wget \
	&& rm -rf /var/lib/apt/lists/*

RUN wget --no-check-certificate https://raw.githubusercontent.com/KimGen/platform/master/_one-click-installation/bootstrap.sh \
    && chmod +x bootstrap.sh && sudo ./bootstrap.sh