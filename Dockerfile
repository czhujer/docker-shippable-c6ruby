FROM centos:centos6.8

ADD . /c6ruby

RUN /c6ruby/install.sh
