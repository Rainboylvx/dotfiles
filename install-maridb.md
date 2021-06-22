sudo pacman -S maraidb

2:

创建`/etc/my.cnf`
```
#
# This group is read both by the client and the server
# use it for options that affect everything
#
[client-server]

#
# include *.cnf from the config directory
#
!includedir /etc/my.cnf.d
[mysqld]
datadir=/home/mysql/
socket=/home/mysql/mysql.sock
skip-networking=0
bind-address= ::
lower_case_table_names=1
innodb_buffer_pool_size=512M  # from 128M showing in startup
```

```
sudo mkdir /home/mysql
sudo chow -Rf mysql:mysql /home/mysql
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/home/mysql/
```

修改:https://mariadb.com/kb/en/systemd/#configuring-access-to-home-directories

```
sudo mkdir /etc/systemd/system/mariadb.service.d
sudo tee /etc/systemd/system/mariadb.service.d/dontprotecthome.conf <<EOF
[Service]

ProtectHome=false
EOF
sudo systemctl daemon-reload
```
3启动mysql
```
sudo systemctl enable mariadb.service
sudo systemctl start mariadb.service
```
