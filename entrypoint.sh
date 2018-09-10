#! /bin/bash

ssserver -c /etc/shadowsocks/config.json -d start

echo "success start shadowsocks"

while [[ true ]]; do
	sleep 1000;
done