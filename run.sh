apt-get update 
apt-get upgrade -y 
apt-get install git -y
cd /srv
sudo mkdir KimGenLab
cd /srv/KimGenLab
sudo mkdir PlatformDb
cd /srv/KimGenLab/PlatformDb
sudo mkdir data
sudo mkdir conf
docker run --name bdKimgen -v /srv/KimGenLab/PlatformDb/data:/var/lib/mysql -v /srv/KimGenLab/PlatformDb/conf:/etc/mysql/conf.d -e MYSQL_ROOT_PASSWORD=TasTeC5a -d mariadb:latest
