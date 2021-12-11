
<h1 align=center>
	<b>born2beroot</b>
</h1>

---

<h4 align=center>
	> Down the rabbit hole, Sysadmin niggers glow in the dark, therefore darkness is your new master.	
</h4>

---

<p align=center>
	In this repo you will find all the documentation and codes developed during the <i>born2beroot</i> 1337's project [42 Network].
</p>

---

<div align=center>
<h2>
<img src=https://github.com/ablaamim/Born2BeRoot/blob/main/SRC/born2berootm.png alt=ablaamim's 42Project Badge/>
</div>

---


<div align=center>
<img src=https://github.com/ablaamim/Born2BeRoot/blob/main/SRC/your-world%20(1).png alt=ablaamim's 42Project/>
</div>

<h3 align=center>
Mandatory
</h3>

> <i>This project aims to introduce you to the wonderful world of virtualization, and this project consists of having you set up your first server by following specific rules.</i>

<p align=center>

</p>


<h3 align=center>
Bonus
</h3>

> <i>Set up a functional WordPress website with the following services: lighttpd, MariaDB, and PHP.</i>
<p align=center>

</p>

---

#### THIS IS A COMPLETE GUIDELINE THROUGH THE PROJECT [STEP BY STEP BABY-SITTING].

---

</p>
<p align="center">
<img src="https://c.tenor.com/kdxBs6f6YloAAAAC/system-failure.gif" width="500">
<p/>

---

#### STEP 1 - VirtualMachine installation and setup.

---

• In order to create a virtual disk you should use goinfre as your machine folder.

• You should select "Install" option, without GUI.

• Hostname : yourlogin42.

• Domain name : leave empty.

• Set up users and passwords by choosing a strong Root Password (again, this password will be changed during the project).

##### LVM :

• You must correctly set-up partitions choosing Manual configuration, according to specific instructions (at this point, you can choose to create the Mandatory
part's partitioning, or the Bonus part's one. I chose the Bonus one). Once you choose the hard drive to partition and click yes. 
Now you must choose your available free space to start partitioning. GO on Create new partition for \boot with the specified size.
Choose primary(this is a Standard Partition) at the beggining of the available space.

•To set up the Logical Volumes you need to undestand the basics of what a LVM really is (see below for more on LVM). 
You will choose the next available free space and configure it as a 'physical volume for encryption'. Then, you must 
choose to 'configure encrypted volumes'>'created encrypted volumes'>'choose volumes to encrypt'>'finish' so that the partition will be overwritten 
with random data. When it is done, you will be asked to type in the passphrase to protect your Encrypted Disk.

•After encrypting the partition, you will have to declare it a Volume Group by going to 'Configure the Logical Volume Manager',
then write the changes on disk, create a Logical Group, name it, select the partition to do it and finally create the Logical Volumes one by one by giving
it a name, set its size and create them with the specifications declared on the project. At the end, you can display the volumes created. I use ext4 as a filesystem 
to the Logical Volumes in this part. Click on 'Finish'. At last, don't forget to mount the volumes by clicking on each of them and choosing 
a correct mount point before finishing the partitioning.

•Now you make sure to be scanning for new packages and to set your location correctly to configure the apt package manager 
(this is Debian's default, but you can change it for appititude later if you wish).

•In the next step you must make sure you are not installing any graphical interface to your Debian OS. Since our goal is to set up a server, 
GUIs are explicitily forbidden and are, altogether, very much dispensable.

•Install the GRUB boot loader and, when that's done, finally reboot your new system so you're now all set!

---

#### Installing SUDO && adding user in groups !

</p>
<p align="center">
<img src="https://c.tenor.com/hWqCOl0hEqAAAAAC/troll-linux.gif" width="500">
<p/>

---

> The Dark Side is Unrealized Potential, losethose who despise SUDO.