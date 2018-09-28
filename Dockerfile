FROM openshift/origin-logging-fluentd:v3.9

MAINTAINER Talita Bernardes Pereira

RUN mkdir -p ${HOME} && mkdir -p /etc/fluent/plugin && \
    gem install -N --conservative --minimal-deps --no-ri --no-doc \
     'fluent-plugin-s3:<1.0.0' 

