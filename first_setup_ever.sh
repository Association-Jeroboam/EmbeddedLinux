#DO NOT RUN ME TWICE

# Hat Startup config
sudo su
cat hat_boot_config.txt >> /boot/config/txt
# CAN Config
cat can_config.txt >> /etc/network/interfaces
exit
