apt-get update 
apt-get upgrade -y 
apt-get install git -y
sudo wget -qO- https://get.docker.com/ | sh
sudo gpasswd -a ${USER} docker
sudo service docker restart
mkdir /srv/KimGenLab
mkdir /srv/KimGenLab/PlatformDb
mkdir /srv/KimGenLab/PlatformDb/data
mkdir /srv/KimGenLab/PlatformDb/conf
mkdir /srv/KimGenLab/Apache
mkdir /srv/KimGenLab/Platform
