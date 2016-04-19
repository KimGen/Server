apt-get update 
apt-get upgrade -y 
apt-get install git -y
cd /srv
sudo mkdir KimGenLab
cd /srv/KimGenLab
sudo mkdir PlatformBD
cd  /srv/KimGenLab/PlatformBD
sudo mkdir data
sudo mkdir conf
docker run --name bdKimgen -v /srv/KimGenLab/PlatformBD/data:/var/lib/mysql -v /srv/KimGenLab/PlatformBD/conf:/etc/mysql/conf.d -e MYSQL_ROOT_PASSWORD=TasTeC5a -d mariadb:latest
