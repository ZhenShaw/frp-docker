FROM alpine

LABEL zhenshaw <zhenshaw@foxmail.com>

RUN apk add --update tzdata
ENV TZ=Asia/Shanghai

ENV FRP_VERSION 0.32.0
RUN wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz \
    && tar -xf frp_${FRP_VERSION}_linux_amd64.tar.gz \
    && mkdir /frp \
    && mv frp_${FRP_VERSION}_linux_amd64/* /frp \
	&& rm -rf frp_${FRP_VERSION}_linux_amd64* \
	&& rm -rf /var/cache/apk/* \
	&& mkdir /conf \
	&& echo "/frp/frpc -c /conf/frpc.ini" > /bin/frpc \
	&& echo "/frp/frps -c /conf/frps.ini" > /bin/frps \
	&& chmod +x /bin/frpc \
	&& chmod +x /bin/frps 

ENTRYPOINT ["sh","-c"]
CMD ["frps"]