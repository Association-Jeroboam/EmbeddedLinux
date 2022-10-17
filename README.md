# Setup CAN interface
## Update CANable device
Use candlelight firmware

https://canable.io/getting-started.html#flashing-new-firmware
https://canable.io/updater/canable1.html

## Bring interface up on starup
https://www.pragmaticlinux.com/2021/07/automatically-bring-up-a-socketcan-interface-on-boot/

Create file /etc/modules-load.d/can.conf
```text
can
can_raw
```
Enable systemd-networkd
```bash
sudo systemctl start systemd-networkd
sudo systemctl enable systemd-networkd
```

Create file /etc/systemd/network/80-can.network
```text
[Match]
Name=can0
[CAN]
BitRate=500K
RestartSec=100ms
```
Restart systemd-networkd
```bash
sudo systemctl restart systemd-networkd
```

Set txqueuelen

- find a way to do it