sudo /etc/init.d/openvswitch-controller stop

sudo update-rc.d openvswitch-controller disable

#sudo apt-get remove openvswitch-common openvswitch-datapath-dkms openvswitch-controller openvswitch-pki openvswitch-switch


sudo ./configure --prefix=/usr --with-linux=/lib/modules/`uname -r`/build



sudo make dist
sudo make install

sudo make modules_install


echo "Removing modules"

sudo rmmod openvswitch


echo "inserting modules"
sudo depmod -a
