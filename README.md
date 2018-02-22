# docker-nginx

## nginx conf
配置nginx server 时，一定要注意的是，PHP 解析路径必须是fpm 容器中代码所在路径 `/var/www/html` 不然会提示 `file not found`


## 关联容器
在启动的时候，将php-fpm的容器关联进来，这样就可以直接通过容器别名访问。避免了
其他容器暴露端口的问题。


