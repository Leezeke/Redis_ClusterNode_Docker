## Build

```
docker build -t redis-cluster:latest .
```

## Run

```
export PORT=7000 && docker run -d -it --net=host redis-cluster:latest redis-cluster $PORT
export PORT=7001 && docker run -d -it --net=host redis-cluster:latest redis-cluster $PORT
export PORT=7002 && docker run -d -it --net=host redis-cluster:latest redis-cluster $PORT
```

## Create Cluster

```
redis-cli --cluster create --cluster-replicas 0 127.0.0.1:7000 127.0.0.1:7001 127.0.0.1:7002
```

