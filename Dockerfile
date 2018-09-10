FROM ubuntu:16.04

COPY ./config.json /etc/shadowsocks/

RUN apt-get update && apt-get install python-m2crypto -y
RUN apt-get install curl -y \
	&& curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
	&& python get-pip.py
RUN pip install shadowsocks 

EXPOSE 8000 8001 8002

COPY ./entrypoint.sh /

RUN chmod 777 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]