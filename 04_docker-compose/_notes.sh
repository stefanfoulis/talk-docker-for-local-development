# startup postgres in the background
docker-compose up web

# show in browser
open http://192.168.59.103:8000/

# try to login to admin: database error

# migrate the database (explain docker-compose run)
docker-compose run --rm web python manage.py migrate

# create a superuser
docker-compose run --rm web python manage.py createsuperuser --username=root --email=''

# show docker-compose.yml
#  * names
#  * volumes
#  * ports
#  * environment
# show settings.py with loading from environment
# explain links and automatic hostname

# start proxy
(cd ../05_proxy && docker-compose up -d)

# show in browser
open http://web.aldryn.me/

# show/explain proxy

# run the web service without re-starting postgers/redis every time
docker-compose rm --force web && docker-compose up --no-recreate web



# general workflow

# create migrations
docker-compose run --rm web python manage.py makemigrations myapp

# adding dependencies
# add to requirements.txt
docker-compose build web
docker-compose rm --force web && docker-compose up --no-recreate web

# build caching
# a pip install command to end of Dockerfile and rebuild for quicker builds


# ipdb
# need to start the server differently, so that we get shell access
docker-compose run --rm --service-ports web


# step into a running container
docker exec -it 04dockercompose_redis_1 /bin/bash


# pyCharm debugger integration does not work :-(
# cheat: create a virtualenv for the project and install the requirements locally as well




