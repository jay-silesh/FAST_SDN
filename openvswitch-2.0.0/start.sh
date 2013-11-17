#Disable to default controller from starting at boot
sudo echo "manual" >> /etc/init/openvswitch-controller.override
#sudo /etc/init.d/openvswitch-controller stop

#sudo update-rc.d openvswitch-controller disable
#Start OVS server process
sudo /etc/init.d/openvswitch-switch start

#Show the Switch Version
sudo ovs-vsctl show
