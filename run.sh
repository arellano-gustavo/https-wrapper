docker stop bridge
docker rm bridge

docker run -d \
-p 443:1443 \
--restart=unless-stopped \
--name=bridge \
-v /home/ubuntu/bridge/conf.d:/etc/nginx/conf.d \
-v /etc/letsencrypt:/etc/ssl \
nginx
