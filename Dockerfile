FROM ubuntu-upstart:latest
RUN apt update -yq && apt upgrade -yq
RUN apt install curl dnsutils net-tools vim apt-transport-https ca-certificates gnupg-agent software-properties-common openssl -yq
RUn add-apt-repository ppa:deadsnakes/ppa -y
RUN apt update -yq
RUN apt install python3.5
RUN update-alternatives --install /usr/bin/python3 python3.5 /usr/bin/python3.5 10
RUN apt install python3-pip
RUN python3 -m pip install setuptools --upgrade
RUN python3 -m pip install cryptography ansible  
RUN apt-get clean
RUN apt-get autoremove
