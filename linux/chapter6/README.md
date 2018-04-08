# Chapter 6 The File system
The program that creates stores, retrieves, protects, and manages files is the *file storage system*, which is part of the kernel of any modern operating system.
<img src="rd.png" alt="The root directory /" width="500">
## File Type
The file tree contains different types of files.
1. An *ordinary file* that contains text, programs, or other data
2. A *directory* that contains names and address of other files
3. A *special file* that represents an I/O device or a filesystem partition.
4. A *symbolic link* that is a pointer to another file.
5. A *socket* that is used for inter-process communication.
6. A *named pipe* is a way for inter-process communication without the socket semantics.

The first character in an `ls -l` listing is a *file type symbol*.

<img src="fts.png" alt="File Type Symbols" width="500">

## Special file
Two kinds of special files:
* *character special file*, represents a byte-oriented I/O device, such display and printer.
* *block special file*, represents a high-speed I/O device that transfers data in block (hard drive).
## links
Linux allows a directory entry to be a pointer to another file. Such as file pointer is called link. 
* *hard link*. is not distinguishable from the original file. Hard links allow you to give different names to the same file within the same file system.
	```
	ln report report.txt
	```
	By default, **ln** forms hard links.
* *symbolic link*. A symbolic link is a directory entry that contains the pathname of another file. 
	```
	ln -s filename linkname
	```
	Unlike hard link, here *filename* does not even have to be an existing file. 
## File permission
**rwx**
* For a regular file, it is easy to understand
* For a directory, execution permission for **cd** or **pwd**. read permission for **ls**. write permission for creating or deleting files in the directory.
## Default File Protection Setting: umask
When you create a new file, the system gives the file a default protection model. The Shell built-in command **umask** display the umask value as 



