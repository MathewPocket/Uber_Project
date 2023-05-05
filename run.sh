#Construction de l'image docker
docker build . -t uberimg

#Run de l'image docker
docker run -it \
-v "$(pwd)/app:/home/app" \
-e MAP_BOX_TOKEN=$MAP_BOX_TOKEN \
uberimg