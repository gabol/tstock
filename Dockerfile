FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

RUN git clone https://github.com/gabol/tstock
RUN python setup.py sdist bdist_wheel