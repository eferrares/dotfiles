FROM ubuntu:trusty

ADD . /scripts
WORKDIR /scripts
RUN sudo ./prepare_environment.sh

