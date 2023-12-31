FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=my-secret-pw
ENV MYSQL_ALLOW_EMPTY_PASSWORD=true
ENV MYSQL_DATABASE=booksdb
ENV MYSQL_AUTHENTICATION_PLUGIN=mysql_native_password

COPY ./data/dump.sql /docker-entrypoint-initdb.d/
