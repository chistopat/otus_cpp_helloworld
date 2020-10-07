FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install wget
RUN echo "deb http://dl.bintray.com/chistopat/otus_cpp trusty main" | sudo tee -a /etc/apt/sources.list
RUN wget -qO key https://bintray.com/user/downloadSubjectPublicKey?username=bintray
RUN apt-key add key
RUN apt-get update -qq
RUN apt-get install helloworld
RUN helloworld_cli
