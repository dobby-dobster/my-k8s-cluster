kubectl create secret generic dockerhub --from-file=.dockerconfigjson=/home/$USER/.docker/config.json --type=kubernetes.io/dockerconfigjson
