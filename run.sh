apt-get update 
apt-get upgrade -y 
apt-get install git -y
sudo wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker ${USER}
sudo service docker restart
docker run -d --name="webServer" ubuntu:16.04
mkdir /srv/KimGenLab
mkdir /srv/KimGenLab/PlatformDb
mkdir /srv/KimGenLab/PlatformDb/data
mkdir /srv/KimGenLab/PlatformDb/conf
mkdir /srv/KimGenLab/Apache
mkdir /srv/KimGenLab/Platform
