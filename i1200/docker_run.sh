#!/bin/bash
container_name=$USER-i1200
usrid=`id -u`
grpid=`id -g`

### check container is ready
if [ `docker ps | grep -c $container_name` != 1 ]; then
    docker run -idt --name $container_name --rm -v $PWD:/home/dev/iot-yocto i1200:dev
fi 

if [ `docker ps | grep -c $container_name` = 1 ]; then
    echo "set dev uid and gid"
    docker exec -d $container_name usermod -u $usrid -g $grpid dev
fi