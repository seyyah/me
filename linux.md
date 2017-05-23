- Image Processing - krita https://krita.org/en/download/krita-desktop/

![](https://krita.org/wp-content/uploads/2016/06/user-interface30.png)

- Video Editing - Lightworks https://www.lwks.com/index.php?option=com_lwks&view=download&Itemid=206

![](https://www.lwks.com/components/com_lwks/assets/images/lwksgui-win.jpg)

- A guide to learn bash: https://github.com/Idnan/bash-guide

![image](https://cloud.githubusercontent.com/assets/263237/25607925/7fdc5b00-2f21-11e7-9eb1-e11c7412fbf9.png)

## TIPS

### Network

```sh
$ inxi -SNxz
$ ifconfig -a
$ sudo uname -a -r
```

### DDRESCUE
```bash
ddrescue -D --force debian-8.8.0-amd64-i386-netinst.iso /dev/mmcblk0
```

### DMESG

```sh
$ dmesg -wH # ~ tail -f 
```

### MBR Sil
> After burning the kiosk on usb stick the Windows operating system shows only XX MB as available size. How can i recover my usb key?
> Kiosk uses hybrid ISO images which installs isolinux bootloader to the Master Boot Record of the drive. Its enough to delete MBR content and partition table to make the drive fully usable again. Windows users should follow this guide. Linux users can use 'dd' command to wipe the MBR of the usb stick:

```bash
dd if=/dev/zero of=/dev/sdX bs=1M count=10
```
