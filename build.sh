IMAGE_NAME=sanjayrancher/development-box-nulog:v0.0
docker build . -t $IMAGE_NAME -f ./Dockerfile

docker push $IMAGE_NAME
