#!/bin/bash

docker run -d \
    --name vod-ci-nginx \
    --publish 8090:80 \
    --link php-fpm:php-fpm \
    -v /opt/nginx/1.12.1/logs/:/var/log/nginx \
    -v /opt/nginx/1.12.1/conf/conf.d:/etc/nginx/conf.d:ro \
    -v /home/chenyarong/sites/vod-ci:/usr/share/nginx/html:ro \
    nginx:1.12.1
    
