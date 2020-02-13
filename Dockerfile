FROM tensorflow/tensorflow:1.15.2-gpu-py3-jupyter

ENV TZ=Pacific/Auckland
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt-get install -y git-all vim htop

WORKDIR /root/

RUN git clone https://github.com/ufal/acl2019_nested_ner.git

RUN pip install --upgrade cython
WORKDIR /root/acl2019_nested_ner
RUN pip install -r requirements.txt