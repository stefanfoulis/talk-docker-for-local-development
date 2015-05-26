# build the image
docker build -t mydjangoimage --no-cache .

# do startproject
docker run -it --rm --user "$(id -u):$(id -g)" -v "$PWD":/usr/src/app -w /usr/src/app mydjangoimage django-admin.py startproject mysite .

# build again with new sourcecode
docker build -t mydjangoimage .

# runserver
docker run -it --rm -p 8000:8000 mydjangoimage

# runserver with mounted code
docker run -it --rm -p 8000:8000 -v "$PWD":/usr/src/app mydjangoimage
