# simple-api-server
a simple api server

# architecture

![architecture](https://nomnoml.com/image.svg?source=%23.box%3A%20fill%3D%238f8%20dashed%0A%5B%3Cbox%3E%20msyql-server%5D-%5Bsimple-api-server%5D%0A)

# comparison
without console.log = 8581 microsecond
with console.log = 9507 microsecond


# api call
```
http://<ip>:<port>/hello/<name>/<age>
```

# Dockerfile
```
docker build . -t temp
```

# MySQL
start mysql server:
```
docker run --rm --net=host --name mysql-server -e MYSQL_ROOT_PASSWORD=default -d mysql:5 mysqld
```

inject table to mysql server using docker interactive running mysql.
```
docker run -it --net=host --name mysql-client --rm mysql:5 mysql  -h192.168.1.106 -uroot -pdefault
```

run simple-api-server:
```
docker run --net=host --rm  -e PORT=8080 -e MYSQL_HOST=192.168.1.106 -e MYSQL_TABLE=imma_default_table -e MYSQL_USERNAME=imma_default_user -e MYSQL_PASSWORD=imma_default_password -e MYSQL_DATABASE=imma_default_database -it temp /home/simple-api-server/entrypoint.sh
```


stop mysql server:
```
docker stop mysql-server
```

