#!/bin/sh
sudo amazon-linux-extras | grep postgre
sudo amazon-linux-extras install postgresql13 epel -y
sudo yum install postgresql-server postgresql-devel -y
/usr/bin/postgres --version
sudo /usr/bin/postgresql-setup --initdb

sudo systemctl enable postgresql
sudo systemctl start postgresql
sudo systemctl status postgresql
