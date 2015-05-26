#!/bin/bash

docker build -t stefanfoulis/cowsay:latest .

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
