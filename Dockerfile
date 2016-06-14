FROM debian:stable
MAINTAINER anyrhine@gmail.com
RUN apt-get update \
	&& apt-get -y install \
		build-essential \
		gcc-avr \
		binutils-avr \
		avr-libc \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \

