FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=pass1234
ENV MYSQL_DATABASE=netmart_db
ENV MYSQL_PASSWORD=pass1234

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306