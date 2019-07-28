FROM centos:6

MAINTAINER Krzysztof Magosa <krzysztof@magosa.pl>

RUN \
  yum makecache fast && \
  yum install -y python sudo yum-plugin-ovl bash && \
  sed -i 's/plugins=0/plugins=1/g' /etc/yum.conf && \
  yum clean all
