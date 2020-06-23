
FROM nginx:1.19.0

WORKDIR /etc/nginx/certs

RUN openssl req -nodes -x509 -newkey rsa:4096 -keyout localhost.key -out localhost.pem -subj "/C=US/ST=WISCONSIN/L=OSHKOSH/O=zinc/OU=test/CN=localhost"

COPY config_files/default.conf /etc/nginx/conf.d/default.conf

