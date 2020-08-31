FROM ubuntu-upstart:latest
RUN apt update -yq && \
  apt upgrade -yq
RUN apt install curl dnsutils net-tools vim ansible apt-transport-https ca-certificates gnupg-agent software-properties-common openssl -yq
RUN apt-get clean
