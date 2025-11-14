# Grub bootloader

```sh
sudo apt update
sudo apt install os-prober

sudo vi /etc/default/grub
# Set `GRUB_DISABLE_OS_PROBER` to `false`

sudo os-prober
sudo update-grub
```
