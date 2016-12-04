FROM centos:centos6.8

ADD . /c6ruby

ADD utils/lsb_release \
  /usr/bin/lsb_release

RUN yum install git openssh-clients -q -y

RUN /c6ruby/install.sh
