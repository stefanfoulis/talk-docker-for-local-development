# build the image
docker build -t talk-1 .

# do startproject
docker run -it --rm --user "$(id -u):$(id -g)" -v "$PWD":/usr/src/app -w /usr/src/app talk-1 django-admin.py startproject mysite .

# build again with new sourcecode
docker build -t talk-1a .

# runserver
docker run -it --rm -p 8000:8000 talk-1a

# runserver with mounted code
docker run -it --rm -p 8000:8000 -v "$PWD":/usr/src/app talk-1a
