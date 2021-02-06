# Class attendance and system monitoring

## Team MemberID
### Id: 2019000010038

## Requirements
* Intellij IDEA 2020.3
* Docker if you want's to start database within docker machine
* java JDK "Corretto-1.8"
* mysql-connector-java-8.0.23



### Installation

#### Database run in docker machine
* docker-compose up --build
##### database external port: 1106
##### database container env
```
environment:
      - MYSQL_DATABASE=attendance
      - MYSQL_ROOT_PASSWORD=root@shohag
      - MYSQL_USER=admin
      - MYSQL_PASSWORD=attendance@shohag
```

* Database Migration -> /migrations
* All DDL /migrations/1_migrations.sql
* All data seed /migrations/2_migrations.sql
* All Project query /migrations/3_migrations.sql







