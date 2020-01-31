FROM python:3.5-alpine
MAINTAINER Erignoux Laurent <lerignoux@gmail.com>

#
# Inspired from [ribsnetwork|https://github.com/cuteribs/ribsnetwork/blob/master/shadowsocks-rss]
#

ADD ./*.bz /ss/
ADD ./config.json /etc/shadowsocks-r/config.json

WORKDIR /ss/shadowsocks

CMD ["python", "/ss/shadowsocks/server.py", "-c", "/etc/shadowsocks-r/config.json"]
