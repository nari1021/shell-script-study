#!/bin/sh
echo -e "[mongodb-org-4.0] \nname=MongoDB Repository\nbaseurl=https://repo.mongodb.org/yum/amazon/2013.03/mongodb-org/4.0/x86_64/\ngpgcheck=1 \nenabled=1 \ngpgkey=https://www.mongodb.org/static/pgp/server-4.0.asc" | sudo tee /etc/yum.repos.d/mongodb-org-4.0.repo
sudo yum install -y mongodb-org-shell && yum install mongodb-org -y
sudo yum install -y mongodb-org-4.0.26 mongodb-org-server-4.0.26 mongodb-org-shell-4.0.26 mongodb-org-mongos-4.0.26 mongodb-org-tools-4.0.26
exclude=mongodb-org,mongodb-org-server,mongodb-org-shell,mongodb-org-mongos,mongodb-org-tools

echo "#### SUCCESS INSTALL Mongo Shell ####"
sudo systemctl start mongod
sudo systemctl daemon-reload
sudo systemctl status mongod
sudo systemctl enable mongod

sudo wget https://s3.amazonaws.com/rds-downloads/rds-combined-ca-bundle.pem
echo "######## FINISH INSTALL Mongo Shell ########"
