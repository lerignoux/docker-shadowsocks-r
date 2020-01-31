FROM alpine:3.9
MAINTAINER Erignoux Laurent <lerignoux@gmail.com>
#
# Inspired from [ribsnetwork|https://github.com/cuteribs/ribsnetwork/blob/master/shadowsocks-rss]
#

RUN apk update && apk add --no-cache python libsodium && \
	rm -rf /var/cache/apk/*

ADD ./*.bz /ss/
ADD ./config.json /etc/shadowsocks-r/config.json

WORKDIR /ss/shadowsocks

CMD ["python", "/ss/shadowsocks/server.py", "-c", "/etc/shadowsocks-r/config.json"]
