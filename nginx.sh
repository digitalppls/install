yes | apt-get install nginx
cp -prf ./nginx /www/nginx/
cp -rf nginx.conf /etc/nginx
nginx -t
nginx -s reload
echo "NGINX RELOADED"
