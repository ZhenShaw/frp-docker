# frp-docker
frp for docker

### Usage
```bash
git clone https://github.com/ZhenShaw/frp-docker.git

cd frp-docker
```

Modify configure file in conf. Using `-p` to expose ports as you need.
```bash
# Default run frps
docker run -itd -v $PWD/conf:/conf zhenshaw/frp
# or
docker run -itd -v $PWD/conf:/conf zhenshaw/frp frps 

# run frpc
docker run -itd -v $PWD/conf:/conf zhenshaw/frp frpc 
```

### Alternative
Modify configure file in conf.
```bash
# Default run frpc, modify docker-compose.yml as you need.
docker-compose up -d
```
