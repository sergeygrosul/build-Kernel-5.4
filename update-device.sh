A20_IP="192.168.1.102"

echo "Copy DTB file..."
sshpass -p 'adatis' scp ./output/debs/linux-dtb-current-sunxi_20.05.0-trunk_armhf.deb root@$A20_IP:/root/deb
echo "Copy the Kernel..."
sshpass -p 'adatis' scp ./output/debs/linux-image-current-sunxi_20.05.0-trunk_armhf.deb root@$A20_IP:/root/deb
echo "Copy the u-boot..."
sshpass -p 'adatis' scp ./output/debs/linux-u-boot-current-adatis-v16_20.05.0-trunk_armhf.deb root@$A20_IP:/root/deb
#sshpass -p 'adatis' ssh root@$A20_IP 'dpkg -i *.deb && sync'
echo "Installing ..."
sshpass -p 'adatis' ssh root@$A20_IP 'cd /root/deb && dpkg -i *.deb && sync && reboot'

#sudo  chmod -R 4777 ./cache/sources/linux-mainline/orange-pi-5.4
