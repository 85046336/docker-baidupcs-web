FROM alpine:3.11

# set label
LABEL maintainer="NG6"

ARG BaiduPCSGo_VER=3.7.0

COPY  root /

RUN wget --no-check-certificate https://github.com/Erope/baidupcs-web/releases/download/3.7.0-fix5/BaiduPCS-Go-v3.7.0-linux-arm64.zip \
&&  unzip BaiduPCS-Go-${BaiduPCSGo_VER}-linux-arm64.zip \
&&  mv BaiduPCS-Go-${BaiduPCSGo_VER}-linux-arm64/BaiduPCS-Go /usr/bin/BaiduPCS-Go \
&&  rm -rf BaiduPCS-Go-${BaiduPCSGo_VER}-linux-arm64*  \
&&  chmod a+x /usr/bin/BaiduPCS-Go

VOLUME /root/Downloads /config
EXPOSE 5299
