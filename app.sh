#!bin/bash
echo lallo
echo re
#strace psql -U postgres -h 127.0.0.1 postgres 2> out
#service postgresql start
#echo "hallo"

#export PGPASSFILE='/HibernateDemo/.pgbpass'
#export PGPASSWORD='S_gP?w-2NmJ7*w3@'
#export POSTGRES_PASSWORD='admin'
 mysqld start --user root
mysql start -P 3306 --protocol=tcp
#cat /var/lib/postgresql/14/main /var/log/postgresql/postgresql-14-main.log
netstat -tulpn 
mysql -u root -h 0.0.0.0 -P 3306 --protocol=tcp

#psql  createdb demoDB
cd HibernateDemo 
 #ls . 
#${GRADLE_HOME}/gradle run --stacktrace 
echo test
#cat /root/.pgpass
