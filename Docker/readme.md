### Docker Cheatsheet

```
docker search nginx
```
```
docker search nginx
```
```
docker container run --publish <host_port:container_port> <image_name>
```
```
docker container run --publish <host_port:container_port> <image_name>
```
```
docker container run --publish 8080:80 nginx
```
```
docker container run --publish 8080:80 --detach nginx
```
```
docker container run --publish <host_port:container_port> <image_name>
```
```
docker container run --publish 8080:80 nginx
```
```
docker container run --publish 8080:80 --detach nginx
```
```
docker container ls
docker ps
```
```
docker container stop <container_id>
docker container stop XXXX
```
```
docker container ls
docker container ls -a
```
```
docker run: #### stat a new container
docker start XXXX: #### start a existing containers
```
```

docker container run --publish 80:80 --detach --name mynginximage  nginx
docker container run -p 80:80 -d --name mynginximage  nginx

docker conatainer logs <container_name> / <container_id>

# check running process inside the container
docker container top <container_id> / <container_name>

# resource consumption
docker stats <container_id> / <container_name>

docker inspect <container_id> / <container_name>

docker container rm <container_id> / <container_name>

# remove multiple containers
docker container rm <container_id> <container_id> <container_id>

ps -ef | grep nginx

docker run -it <container_id>/ <image_name> bash

# access to container when its start
docker container run -p 8080:80 -it --name nginx nginx /bin/bash

# access to existing container 
docker exec -it <container_id> bash

# RUN MYSQL TEST
docker run --name mysql-test -e MYSQL_ROOT_PASSWORD=P@assword1 -d mysql:latest

# create a file inside the container
docker exec -it <container_id>/<container_name> touch /tmp/testfile

# access mysql from outside of the container
docker exec -it <container_id>/<container_name> mysql -u root -p

find / -name "index.html"

4Eta6#!c1VyLkJEqyvIj$hGf