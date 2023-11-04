# bashfilemonitor
A bash script experiment that not only detects changes to files in the target file system, but also attempts to catch the IP address that changed the file.

inotify is required for this script. To install:

Ubuntu: sudo apt-get inotify-tools
<br>
CentOS 7: sudo yum inotify-tools
<br>
Fedora 21: sudo dnf inotify-tools

inotify is incorporated into the Linux kernel 2.16.3 and beyond. 

https://en.wikipedia.org/wiki/Inotify
