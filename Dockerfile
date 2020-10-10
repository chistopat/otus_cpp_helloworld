FROM ubuntu:18.04

#prevent warnings
ENV DEBIAN_FRONTEND noninteractive
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE 1

ARG BINTRAY_REPO="otus_cpp"
ARG BINTRAY_USER="chistopat"

RUN apt-get update -qq
RUN apt-get install apt-utils -y
RUN apt-get install curl gnupg -y
RUN echo "deb http://dl.bintray.com/${BINTRAY_USER}/${BINTRAY_REPO} trusty main" | tee -a /etc/apt/sources.list
RUN curl -o key https://bintray.com/user/downloadSubjectPublicKey?username=bintray
RUN apt-key add key
RUN apt-get update -qq
RUN apt-get install helloworld
RUN helloworld_cli

#unset env to default
ENV DEBIAN_FRONTEND newt
ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=""
