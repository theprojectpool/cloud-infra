sudo apt-get update && sudo apt-get upgrade
sudo apt-get install linux-image-generic-lts-raring linux-headers-generic-lts-raring
sudo reboot # requires ssh back into server
sudo apt-get install git
wget -qO- https://get.docker.io/ | sh
sudo usermod -aG docker ubuntu
sudo mkdir /var/docker
sudo git clone https://github.com/discourse/discourse_docker.git /var/docker
cd /var/docker
sudo cp samples/web_only.yml containers/app.yml
sudo cp samples/redis.yml containers/redis.yml
sudo cp samples/data.yml containers/data.yml


