FROM ubuntu-upstart:latest
RUN apt update -yq && apt upgrade -yq
RUN apt install curl dnsutils net-tools vim apt-transport-https ca-certificates gnupg-agent software-properties-common openssl -yq
RUN apt install make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl -yq
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt update -yq
RUN apt install python3.5 python3.5-dev -yq
RUN curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
RUN python3.5 /tmp/get-pip.py
RUN pip3.5 install setuptools --upgrade
RUN pip3.5 install cryptography ansible  
RUN apt-get clean
RUN apt-get autoremove
