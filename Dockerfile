FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install wget -y
RUN echo "deb http://dl.bintray.com/chistopat/otus_cpp trusty main" | sudo tee -a /etc/apt/sources.list
RUN wget -O key https://bintray.com/user/downloadSubjectPublicKey?username=chistopat
RUN apt-key add key
RUN apt-get update
RUN apt-get install helloworld -y --force-yes
RUN helloworld_cli
