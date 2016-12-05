FROM centos:centos6.8

ADD . /c6ruby

ADD utils/lsb_release \
  /usr/bin/lsb_release

RUN yum update -y -q

RUN yum install git openssh-clients wget glibc-devel -q -y

RUN /c6ruby/install.sh

RUN rm -rf /var/cache/yum/* \
    && yum clean all

RUN wget http://ftp.gnu.org/gnu/glibc/glibc-2.14.1.tar.gz && tar -xvzf glibc-2.14.1.tar.gz

RUN cd glibc-2.14.1 && mkdir glibc-build

RUN cd /glibc-2.14.1 && sed -i -e 's/"db1"/& \&\& $name ne "nss_test1"/' scripts/test-installation.pl

RUN cd /glibc-2.14.1/glibc-build && ../configure --prefix='/usr' && make 1>/dev/null && make install

RUN rm -rf glibc-2.14.1 && rm -f /glibc-2.14.1.tar.gz

