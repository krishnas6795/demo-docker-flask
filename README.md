# Docker Installation in centos

curl -fsSL https://test.docker.com -o test-docker.sh
sudo sh test-docker.sh

sudo systemctl enable --now docker
systemctl status docker
sudo usermod -aG docker $USER
Exit once and Relogin

docker ps

Building an image and running the container.

docker build -t flask-tutorial:latest .
docker run -d -p 5000:5000 flask-tutorial

docker ps
docker ps -a

docker logs <container_name/container_id>

docker images

docker rmi <image_id/image_name>

docker rm <container_name/container_id>

docker build -t krishdockhub/flask-tutorial:latest .
docker run -d -p 5000:5000 krishdockhub/flask-tutorial
