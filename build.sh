#!/bin/bash
echo "清空本地修改，并制作最新镜像........"
git checkout . && git pull origin master
mvn clean package  docker:build -DpushImage -DskipTests && echo "清空无用的docker images" && docker container prune \
 && docker image prune