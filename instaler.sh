#!/bin/bash
sudo apt install php-mysqli php mysql-client mysql-server apache2
sudo mysql -u root -e "CREATE USER 'web'@'localhost' IDENTIFIED BY '1234'; GRANT ALL PRIVILEGES ON *.* TO 'web'@'localhost'; FLUSH PRIVILEGES;"
