FROM czhujer/shippable-c6base:v1.0-1

ADD . /c6ruby

RUN /c6ruby/install.sh

RUN rm -rf /var/cache/yum/* \
    && yum clean all
