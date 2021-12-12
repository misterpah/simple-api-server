# simple-api-server
a simple api server


# MySQL
start mysql server:
```
docker run --net=host --name mysql-server -e MYSQL_ROOT_PASSWORD=default -d mysql:8.0 mysqld --default-authentication-plugin=mysql_native_password
```


stop mysql server:
```
docker stop mysql-server
docker rm mysql-server
```

