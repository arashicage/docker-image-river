# ref https://hub.docker.com/r/zapier/twemproxy/~/dockerfile/
# ref https://hub.docker.com/r/jgoodall/twemproxy/~/dockerfile/
# ref https://hub.docker.com/r/fblgit/twemproxy-nutcracker/~/dockerfile/

FROM ubuntu:16.04

MAINTAINER arashicage@yeah.net

ENV DEBIAN_FRONTEND=noninteractive

ENV VERSION=v0.4.1

RUN apt-get update && DEBIAN_FRONTEND=noninteractive && apt-get install -qy gcc autoconf make libtool binutils wget

RUN cd /root && wget https://github.com/twitter/twemproxy/archive/${VERSION}.tar.gz && tar zxf ${VERSION}.tar.gz && cd twemproxy-* && \
    autoreconf -fvi && ./configure --prefix=/usr && make -j4 && make install

ADD start.sh /start.sh
RUN chmod 755 /start.sh

CMD ["/start.sh"]

