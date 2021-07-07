FROM redis:latest

COPY script/redis-cluster.sh /bin/redis-cluster

COPY conf/redis_example.conf /etc/redis/redis_example.conf

CMD ["/bin/redis-cluster", "6379"]
