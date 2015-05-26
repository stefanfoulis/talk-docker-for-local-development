#!/bin/bash

docker ps

docker run -it ubuntu:14.04 /bin/bash

root@98f74cda9c12:/# apt-get update
root@98f74cda9c12:/# apt-get install cowsay
root@98f74cda9c12:/# rm -rf /var/lib/apt/lists/*
root@98f74cda9c12:/# echo '/usr/games/cowsay "This is my docker image. There are many like it. But this one is mine. Container $HOSTNAME"' >> /root/.bashrc

docker history dffaa80900e5

docker commit -m "add cowsay" 98f74cda9c12 stefanfoulis/cowsay:latest

docker history stefanfoulis/cowsay:latest

docker run -it --rm stefanfoulis/cowsay:latest /bin/bash
 _________________________________________
/ This is my docker image. There are many \
\ like it. But this one is mine.          /
 -----------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
root@98f74cda9c12:/#

docker push stefanfoulis/cowsay:latest
