FROM alpine:latest

MAINTAINER Jaideep N

RUN	set -x \
  && apk update --no-cache \
  && apk upgrade \
	&& apk add zsh \
	shadow \
	vim \
	curl \
	nmap \
	netcat-openbsd \
	socat \
	git \
	postgresql-client \
	openssh-client \
	jq \
	py2-pip \
	bind-tools \
	bash

ENTRYPOINT [ "/bin/sh", "-c" ]

CMD [ "/usr/bin/curl"]
