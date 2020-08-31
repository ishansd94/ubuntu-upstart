FROM ubuntu-upstart:latest
RUN apt update -yq && apt upgrade -yq
RUN apt install curl dnsutils net-tools vim apt-transport-https ca-certificates gnupg-agent software-properties-common openssl python3-pip -yq
RUN apt upgrade -yq
RUN pip3 install setuptools --upgrade
RUN pip3 install ansible  
RUN apt-get clean
