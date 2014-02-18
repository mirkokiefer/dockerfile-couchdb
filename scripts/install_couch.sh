

### unpack source
cd /tmp && tar xvzf apache-couchdb-1.5.0.tar.gz
cd apache-couchdb-*
./configure && make
### install
sudo make install

### remove leftovers from ubuntu packages
sudo rm /etc/logrotate.d/couchdb /etc/init.d/couchdb

### install logrotate and initd scripts
sudo ln -s /usr/local/etc/logrotate.d/couchdb /etc/logrotate.d/couchdb
sudo ln -s /usr/local/etc/init.d/couchdb  /etc/init.d
sudo update-rc.d couchdb defaults
