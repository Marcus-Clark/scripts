#!/bin/sh
### download 6.1.9 packages
mkdir kerneltemp
cd kerneltemp
wget https://slackware.uk/cumulative/slackware64-current/slackware64/a/kernel-huge-6.1.9-x86_64-1.txz
wget https://slackware.uk/cumulative/slackware64-current/slackware64/a/kernel-modules-6.1.9-x86_64-1.txz
### extract it
explodepkg kernel-huge-6.1.9-x86_64-1.txz
explodepkg kernel-modules-6.1.9-x86_64-1.txz
### be sure there are no refused files from precedent package
rm -rf /lib/modules/6.1.9
### install the modules
mv lib/modules/6.1.9 /lib/modules
### install the kernel image
mv boot/vmlinuz-huge-6.1.9 /boot/vmlinuz-safe-6.1.9
### now edit lilo.conf
# vi /etc/lilo.conf
### add
# image = /boot/vmlinuz-safe-6.1.9
# root = /dev/XXXX
# label = Safe
# read-only
### run lilo
# lilo -v
