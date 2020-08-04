FROM ubuntu-upstart:latest
RUN apt update -yq && \
  apt upgrade -yq
RUN apt install curl dnsutils net-tools
RUN apt-get clean
