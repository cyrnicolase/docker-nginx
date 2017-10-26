#
# health nginx
# version 1
#

FROM nginx:1.12.1

# 复制配置文件
COPY nginx/nginx.conf /etc/nginx/nginx.conf 
COPY nginx/fastcgi_params /etc/nginx/fastcgi_params

# 创建挂载点
VOLUME ["/usr/share/nginx/html", "/var/log/nginx", "/etc/nginx/conf.d"]
