# Linux hardware knowledge

It is a good practice to know the hardware components of your linux system is running.

## uname

print out the system information
`uname -s` print out the shell information
`uname -n` print out the uname
`uname -v` print the kernel version
`uname -r` print out the kernel release
`uname -m` print out the hardware name
`uname -a` print out all the information


## `lshw`

`lshw` gather vast information about your hardware information, such as cpu, disk, memory, usb controllers. The information provided by `lshw` gather from different `/proc` files.


## `lscpu`

`lscpu` shows the information abouth cpu. The information is from `sysfs` and `/proc/cpuinfo`

## `lsblk`
Check hard disk information

* `lsblk -a` list all the blocks

* Note, `sda` and `sdb` just corresponds to two different physical disks. If you have a third disk, it would be `sdc`.. 

## `lsusb` 
List the information about SUB controllers.

## `lspci`

PCI (Peripheral Component Interconnect) devices may include usb ports, graphics, network adapter etc.

* `lspci -t` list the information in a tree format.
* `lspci -v` list the detailed information.

## `scsi` and `sata`

`scsi` (Small Computer system interface) and `sata` (serial advanced technology attachment) 

* `lsscsi -s` shows the device size.


## `hdparm`

list the information about sata devices informaton

* `haparm -g` print out the geometry interms of the cylinders, heads, sectors, size...

## `fdisk`

print linux file system information

## `dmidecode` 

extract hardware information by reading data from DMI tables


1. `sudo dmidecode -t memory`  print information about memory
2. `sudo dmidecode -t system` print out the information about system
3. `sudo dmidecode -t bios` print out information about bios
4. `sudo dmidecode -t processor` print out information about processor



## summary

Most of these commands use files in `/proc` to extract the system information.






