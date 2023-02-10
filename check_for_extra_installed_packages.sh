#!/bin/sh

##### This checks for packages that are not official Slackware packages
##### i.e. packages that come from Sbo, ponce etc. 

ls /var/lib/pkgtools/packages | grep -v -- '-[[:digit:]]\+$'
