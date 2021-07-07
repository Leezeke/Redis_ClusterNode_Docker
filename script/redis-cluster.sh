#! /bin/sh

PORT=6379

[[ ! "$1" != "" ]] || PORT=$1

cat /etc/redis/redis_example.conf | sed 's/6379/'$PORT'/g' > /etc/redis/redis_$PORT.conf

/usr/local/bin/redis-server /etc/redis/redis_$PORT.conf
