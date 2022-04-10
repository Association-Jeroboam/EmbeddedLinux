#DO NOT RUN ME TWICE

# Hat Startup config
sudo su
cat hat_boot_config.txt >> /boot/firmware/config.txt
# CAN Config
cat can_config.txt >> /etc/network/interfaces

# Screen resolution
cat screen_config.txt >> /boot/firmware/config.txt

# Raspi cam
cat cam_config.txt >> /boot/firmware/config.txt

echo Done
exit
