yes | apt-get install nginx
mv ./nginx /www/
cp -rf nginx.conf /etc/nginx
nginx -t
nginx -s reload
echo "NGINX RELOADED"
