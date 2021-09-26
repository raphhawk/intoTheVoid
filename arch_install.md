## mount devices
## install packages
```pacstrap -i /mnt base base-devel cryptsetup device-mapper dhcpcd diffutils e2fsprogs inetutils jfsutils less linux linux-firmware logrotate lvm2 man-db man-pages mdadm nano netctl perl reiserfsprogs s-nail sysfsutils texinfo usbutils vi which xfsprogs```
## Generate fstab
```genfstab -U -p /mnt >>/mnt/etc/fstab```
## chroot into mnt
```arch-chroot /mnt /bin/bash```
## set locale, host, clock
```nano /etc/locale.gen ....```
	(un# en_US.UTF8 UTF8)
```locale-gen
ln -sf /usr/share/zoneinfo/Asia/Kolkatta /etc/localtime```
hwclock --systohc --utc
echo %hostname% > /etc/hostname
nano /etc/hosts```
	127.0.1.1 localhost.localdomain %hostname%
	
```pacman -S dialog wpa_supplicant wireless_tools``` 
passwd 
pacman -S grub efibootmgr
mkdir /boot/efi
mount /dev/sdx /boot/efi
grub-install --target=x86_64-efi --bootloader-id=%id% --efi-directory=/boot/efi
grub-mkconfig -o /boot/grub/grub.cfg
exit
umount -R /mnt
reboot

post installation
useradd -m -g users -G wheel -s /bin/bash %username%
passwd %username%
EDITOR=nano visudo
	(un# %wheel ALL=(ALL) ALL)
exit 
login to %username%
sudo pacman -S pulseaudio pulseaudio-alsa xorg xorg-xinit xorg-server lightdm lightdm-gtk-greeter deepin
echo "exec startdde" > ~/.xinitrc
sudo systemctl enable lightdm
startx

