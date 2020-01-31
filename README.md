# docker-shadowsocks-r
a simple ssr container


## tldr
```
docker run -v config.json:/etc/shadowsocks-r/config.json -p 8388:8388 lerignoux-shadowsocks-r
```

## config
The standard configuration is expected:
* method default: `aes-256-cfb`
* obfs default: `http_simple`
* timeout default: `300`
```
{
    "server": "0.0.0.0",
    "server_ipv6": "::",
    "server_port": 8388,
    "local_address": "127.0.0.1",
    "local_port": 1080,

    "password": "<password>",
    "method": "<method>",
    "protocol": "<protocol>",
    "protocol_param": "",
    "obfs": "<obfs>",
    "obfs_param": "",
    "redirect": "",

    "timeout": 120,
    "dns_ipv6": false,
    "fast_open": true,
    "workers": 1
}
```
