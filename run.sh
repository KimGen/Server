apt-get update 
apt-get upgrade -y 
apt-get install git -y
mkdir /srv/KimGenLab
mkdir /srv/KimGenLab/PlatformDb
mkdir /srv/KimGenLab/PlatformDb/data
mkdir /srv/KimGenLab/PlatformDb/conf
cd mariadb
cp my.cnf /srv/KimGenLab/PlatformDb/conf
docker run --name bdKimgen -v /srv/KimGenLab/PlatformDb/data:/var/lib/mysql -v /srv/KimGenLab/PlatformDb/conf:/etc/mysql/conf.d -e MYSQL_ROOT_PASSWORD=TasTeC5a -d mariadb:latest
