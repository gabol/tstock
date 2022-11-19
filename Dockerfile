FROM ubuntu:latest
WORKDIR /tstock

RUN apt-get update && apt-get install -y \
    python3 \
    git \
    python3-pip

RUN git clone https://github.com/gabol/tstock
RUN pip install setuptools
RUN python3 setup.py install

ENTRYPOINT ["tstock"]