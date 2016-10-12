FROM ubuntu:16.04

MAINTAINER Ondrej Platek

RUN apt-get update && \
    apt-get install -y wget build-essential python3 python3-dev python3-distribute python3-pip
RUN pip3 install --install-option="--zmq=bundled" pyzmq
RUN pip3 install protobuf nose gevent
