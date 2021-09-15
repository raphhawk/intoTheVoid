# intoTheVoid
## My complete rice confs
  if and file named "dot.filename" just remove the "dot" and follow the specific directory structure

## Confs list:

## Distros
### Void
  post install procedure at void_postinstall
### Arch
  complete install procedure at arch_install
### Fedora
  post install procedure at fedora_postinstall

## Window Managers
### bspwm/sxhkd/polybar/picom
  config files at dotFiles/dot.config/{bspwm/sxhkd/polybar/picom}
### dwm
  my custom dwm package tarball at dwm-e/dwm-6.2-myconf.tar.gz
### awesome
  config files at awsome-e/rc.lua

## File Managers
### vifm
  my configs and colorschemes at dotFiles/dot.vifm/
### pcmanfm
  void does not support automount of local/usb/mtp devices in a minimal install hence,
    android/polkit rules at /usr
    dbus session config at dotFiles/dot.xinitrc
 
## shell
### bash
  .bashrc/.bash_profile config at dotFiles/{dot.bashrc,dot.bash_profile}

## Text Editor
### vim
  vim configs at dotFiles/dot.vimrc
  colorschemes/lightline/language_support at dotFiles/dot.vim

## Terminals
### xterm
  xterm config at dotFiles/dot.Xresources and autoloads with bspwm config
### st
  my custom st package at st-e/

## Miscellaneous
### Touchpad
  Void support for touchpad especially thinkpad touchpads are terrible and buggy.
    synaptics/libinput touchpad confs at usr/share/X11/xorg.conf.d/
    to load synaptics drivers at boot the grub config is at /etc/default/grub
### Pfetch
  Just a fetching program minimal to neofetch
### Polybar bin
  Polybar precompiled binary at polybar-3.5.5-1-x86_64.pkg.tar.zst only for arch, install with pacman


