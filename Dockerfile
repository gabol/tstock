FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3 \
    git \
    python3-pip
    
RUN pip install setuptools
RUN git clone https://github.com/gabol/tstock
WORKDIR /tstock
RUN python3 setup.py install

ENTRYPOINT ["tstock"]