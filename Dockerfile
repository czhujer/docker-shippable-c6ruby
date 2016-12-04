FROM drydock/u14:{{%TAG%}}

ADD . /u14rub

RUN /u14rub/install.sh
