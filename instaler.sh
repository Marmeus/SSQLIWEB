#!/bin/bash
sudo apt install php-mysqli php mysql-client mysql-server apache2 -y
sudo systemctl restart apache2
sudo mkdir /var/www/html/SSQLIWEB
sudo cp index.php /var/www/html/SSQLIWEB/
sudo mysql -u root -e "CREATE USER 'web'@'localhost' IDENTIFIED BY '1234'; GRANT ALL PRIVILEGES ON *.* TO 'web'@'localhost'; FLUSH PRIVILEGES;"
mysql -u web -p'1234' < populate.sql
