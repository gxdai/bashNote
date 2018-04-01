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

## `dpkg`
`dpgk` queries, installs, removes, and maintains Debian software package and their dependencies.

* `dpkg -i` installs the package
* `dpkg -r` removes the package. 

## `apropos`
When you are not sure of the exact name of a command

## `chmod`
change mode for files, example

* `chmod go-rwx` remove `rwx` for group and other.
* `chmod go+rwx` add `rwx` for group and other.

## `ps`
A process is an executing program identified by unique PID (process identifier). To to see information about your system, with their associated PID and status, type


## `sleep`
wait sometime before command line to prompt, example

* `sleep 10` will wati 10 seconds.

## `ctrl+z` 

Suspend the process and then `bg` to make it background

## `jobs`

When a process is running, background or suspended, it will be entered into a list with job number,

* `bg %jobnumber` to background a job
* `fg %jobnumber` to foreground a job

**Note: job number is different from PID**
**Note: Don't forget `%`**

## `kill`

kill the job nubmer or PID

* `kill %jobnumber` or `kill PID`

## `diff`

`diff` compares the contents of two files and display the differences. Suppose you have a file called **file1** and **file2**. To see the difference

`diff file1 file2`

`<` denotes file1 and `>` denotes file2

## `find`

search through directory for files with a given name, date, size..

* `find . -iname "*txt" 
* `find . -size +1M -ls`

## `history`

Each command is given a number according to the order it was enterd.

* `history` list all the command history
* `!!` exectue the last command
* `!-3` execute the third most recent command
* `!5` execute the 5th command in list
* `!grep` recall the last command starting wth grep 
* `set history=100`, increasing the history buffer


## Variables

There are two categories, environment variables (upper case) and shell variables (lower case).

* OSTYPE, USER, HOME, HOST, ARCH, DISPLAY, PRINTER, PATH
* `setenv` set the ENVIRONMENT variables, display using `printenv` or `env`. And unset use `unsetenv`
* shell variables, `history`, `cwd`, `home`, `path` and `prompt`. `set` is used to set or display shell variable

## pip problem

* `&` put program background.
* `;` push multiple commands in a single line.
* `&&` The second command would execute only if the first one succeeds.
* `||` The second command would execute only if the first one fails.
* `!` all except. `rm -r !(*html)` would delete all the files except html.
* `|` The pip operator, the output of the first command is the input of the second command.
* `$()` is the same as ````

## [introduction of subdirectories](https://www.linux.org/threads/in-linux-everything-is-a-file.4251/)
* `/dev` There are devices that your system will uses or can use.
* `/root`
* `/sbin` has frequently used programs.
* `/tmp` stores temporary files.
* `/var` is a directory for certain files that may change size.
* `/lib` is for library files. **Normal error: can't find shared library**
* `/home` is user directory.
* 
