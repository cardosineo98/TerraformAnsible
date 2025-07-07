#!/bin/bash

apt-get update -y

apt-get install -y busybox

mkdir -p /home/ubuntu/web
cd /home/ubuntu/web

echo "<h1>Feito com Terraform</h1>" > index.html

nohup busybox httpd -f -p 8080 &