# frp-docker
frp for docker

### Usage
Modify configure file in conf.
```bash
# default run frps
docker run -itd -v $PWD/conf:/conf zhenshaw/frp frps 

# run frpc
docker run -itd -v $PWD/conf:/conf zhenshaw/frp frpc 
```

### Alternative
Modify configure file in conf.
```bash
# Default run frpc
docker-compose up -d
```
