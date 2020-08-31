FROM ubuntu-upstart:latest
RUN apt update -yq && \
  apt upgrade -yq
RUN apt install curl dnsutils net-tools vim ansible -yq
RUN apt-get clean
