cd mariadb
cp my.cnf /srv/KimGenLab/PlatformDb/conf
docker run --name bdKimgen -v /srv/KimGenLab/PlatformDb/data:/var/lib/mysql -v /srv/KimGenLab/PlatformDb/conf:/etc/mysql/conf.d -e MYSQL_ROOT_PASSWORD=TasTeC5a -d mariadb:latest
