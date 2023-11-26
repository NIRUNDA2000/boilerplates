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

#### start a new container
```
docker run XXXX
```
#### start a existing containers
```
docker start XXXX
```

```
docker container run --publish 80:80 --detach --name mynginximage  nginx
docker container run -p 80:80 -d --name mynginximage  nginx
```
```
docker conatainer logs <container_name> / <container_id>
```

#### check running process inside the container
```
docker container top <container_id> / <container_name>
```
#### resource consumption

```
docker stats <container_id> / <container_name>
```

docker inspect <container_id> / <container_name>
```
docker container rm <container_id> / <container_name>
```
#### remove multiple containers
```
docker container rm <container_id> <container_id> <container_id>
```

```
ps -ef | grep nginx
```
```
docker run -it <container_id>/ <image_name> bash
```
#### access to container when its starting
```
docker container run -p 8080:80 -it --name nginx nginx /bin/bash
```
#### access to existing container 
```
docker exec -it <container_id> bash
```
#### RUN MYSQL TEST
```
docker run --name mysql-test -e MYSQL_ROOT_PASSWORD=P@assword1 -d mysql:latest
```
#### create a file inside the container
```
docker exec -it <container_id>/<container_name> touch /tmp/testfile
```
#### access mysql from outside of the container
```
docker exec -it <container_id>/<container_name> mysql -u root -p
```

#### Execute MariaDB Container
<p> Make the Container name Static like - my-mariadb-container
Set the DB Root password using Env Variable -MARIADB_ROOT_PASSWORD
Set the DB password using Env Variable - MARIADB_PASSWORD
Set the DB Name using Env Variable - MARIADB_DATABASE </p>

#### Execute Wordpress Container
##### Make the Container name Static like - wordpress-container
##### Set the DB Container Name in Env Variable - WORDPRESS_DB_HOST
##### Set the DB Name in Env Variable - WORDPRESS_DB_NAME
##### Set the DB User in Env Variable - WORDPRESS_DB_USER
##### Set the DB password in Env Variable - WORDPRESS_DB_PASSWORD
##### Expose Front-End Container on port 8080/80
##### Access WebSite on LocalHost/HostIP:PORT

```
docker network create mynetwork
```
```
docker run --name my-mariadb -p 3306:3306 -d -e MARIADB_ROOT_PASSWORD=P@ssword1 -e MARIADB_USER=wordpress_user -e MARIADB_DATABASE=wordpress_database -e MARIADB_PASSWORD=wordpress_P@ssword1 --network mynetwork mariadb:latest
```
```
docker run --name my-wordpress -p 8080:80 -d -e WORDPRESS_DB_HOST=my-mariadb -e WORDPRESS_DB_NAME=wordpress_database -e WORDPRESS_DB_USER=wordpress_user -e WORDPRESS_DB_PASSWORD=wordpress_P@ssword1 --network mynetwork wordpress:latest
```

<!--- find / -name "index.html" --->