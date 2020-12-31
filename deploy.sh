#! /bin/sh


echo "building ......"
hugo --gc --minify

echo "uploading ....."
rsync -avP public/* ermu:~/2msoft.cn

echo "reload web server ....."
ssh ermu "sudo caddy reload --config /home/ubuntu/Caddyfile"
