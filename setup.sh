#!/bin/bash

if [ ! -e data/password ];then
	echo "Rcon のパスワードを生成します..."
	echo `openssl rand -base64 32` > data/password
fi

PASSWORD=`cat data/password`
cat server.properties | sed -e "s|RCONPASSWORD|${PASSWORD}" > data/server.properties
