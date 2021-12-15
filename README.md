<h1 align=center>
	<b>Born2BeRoot</b>
</h1>

---

<h4 align=center>
	 :repeat: Down the rabbit hole, Sysadmin niggers glow in the dark, therefore darkness is your new master.	
</h4>

---

<p align=center>
	In this repo you will find all the documentation and codes developed during the <i>born2beroot 1337's project</i>.
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

#### :100: THIS IS A COMPLETE GUIDELINE THROUGH THE PROJECT, DETAILED AND PUT ON POINT. [CALL IT A STEP BY STEP BABY-SITTING].

---

</p>
<p align="center">
<img src="https://c.tenor.com/kdxBs6f6YloAAAAC/system-failure.gif" width="500">
<p/>

---

> “Wisdom is not a product of schooling but of the lifelong attempt to acquire it.”
― Albert Einstein

---

#### :ok_hand: Poject overview : [Q&&A]

> Q : How a virtual machine works ?

> A : A virtual machine works through virtualization technology, the hypervisor creates a sandboxed environement that behaves like 
a separate computer with virtual hardware (All simulated through the hypervisor).

> Q : Why Debian ?

> A : It is easier to install and configure than CENTOS.

> Q : What is the difference between Debian and CENTOS ?

> A : Debian, in addition to being more user-friendly, has a wide distribution, so its support is easier. CentOs, on the other hand,
 is aimed at the business sector, having more stability, but with less support and updates.

> Q : The purpose of a virtual machine ?

> A : It is as said in the previous question, a "sandboxed environement" which makes it perfect for testing application and pentesting
Operating systems without the need of reseting your machine, you can easily switch between OS to another.

> Q : What is the diffrence between apt and aptitude ?

> A : Aptitude uis a high-level package-manager, it integrates the fonctionnalities of apt-cache and apt-mark, other than that
it has a GUI, while apt is a low-level package-manager it only supports command-line.

> Q : What is apparmor ?

> A : it is a security Kernel module that restricts access to applications [Mandatory access control].

---

#### :heavy_check_mark: VirtualMachine installation and setup : [Behold the mighty VM!].

---

• In order to create a virtual disk you should use "goinfre/username" as your machine image folder.

• You should select "Install" option, without GRAPHICAL USER INTERFACE OF COURSE.

• Hostname : yourlogin42 [intra].

• Domain name : Leave empty.

• Set up users and passwords by choosing a strong Root Password (Again, this password will be changed during the project && Evaluation).

##### :heavy_check_mark: LVM [LOGICAL VOLUME MANAGER]:

• You must correctly set-up partitions choosing Manual configuration, according to specific instructions (at this point, you can choose to create the Mandatory
part's partitioning, or the Bonus part's one. I chose the Bonus one).
Once you choose the hard drive to partition and click yes.
Now you must choose your available free space to start partitioning.
GO on Create new partition for \boot with a specified size.
Choose primary(this is a Standard Partition) at the beggining of the available space.

• To set up the Logical Volumes you need to undestand the basics of what a LVM really is.
You will choose the next available free space and configure it as a 'physical volume for encryption'.
Then, you must choose to 'configure encrypted volumes'>'created encrypted volumes'>'choose volumes to encrypt'>'finish' so that the partition will be overwritten 
with random data. 
When it is done, you will be asked to type in the passphrase to protect your Encrypted Disk.

• After encrypting the partition, you will have to declare it a Volume Group by going to 'Configure the Logical Volume Manager',
then write the changes on disk, create a Logical Group, name it, select the partition to do it and finally create the Logical Volumes one by one by giving
it a name, set its size and create them with the specifications declared on the project. At the end, you can display the volumes created. 
I use ext4 as a filesystem to the Logical Volumes in this part. 
Click on 'Finish'. At last, don't forget to mount the volumes by clicking on each of them and choosing a correct mount point before finishing the partitioning.

• Now you make sure to be scanning for new packages and to set your location correctly to configure the apt package manager 
(this is Debian's default, but you can change it for appititude later if you wish).

• In the next step you must make sure you are not installing any graphical interface to your Debian OS. Since our goal is to set up a server, 
GUIs are explicitily forbidden and are, altogether, very much dispensable.

• Install the GRUB boot loader and, when that's done, finally reboot your new system so you're now all set!

> Now we can untitle you ready to begin your journey as a sysadmin fellow.

---

#### :heavy_check_mark: Installing SUDO && adding user in groups ! [SUPER USER DO]

</p>
<p align="center">
<img src="https://c.tenor.com/hWqCOl0hEqAAAAAC/troll-linux.gif" width="350">
<p/>

---

> The dark side is unrealized potential, losethose who despise SUDO.
> CHAPTER 0, PASSAGE 0.1 : "SUDO SU, ON YOUR KNEES NORMAL USER".

---

Perform the sudo installation :

> $ apt-get install sudo

Check sudo installation :

> $ dpkg -l sudo

Adding a user in group :

> $ usermod -aG sudo "username"

Give prvillege as SU :

> $ sudo visudo

```
ADD THIS SPECIFIC LINE IN THE FILE : 
>	your_username    ALL=(ALL) ALL
```

---

</p>
<p align="center">
<img src="https://i.redd.it/90wtchmn0zg51.jpg" width="350">
<p/>

---

> But due to sudoers wickedness, God was unable to be born properly. He was supposed to be born to be ROOT in the womb of the Holy Mother,
 Until the time of the Awakening... His first words were "S U D O".

---

#### :heavy_check_mark: Installing SSH and configuring SSH service :

---

Perform the SSH installation :

> $ sudo apt-get install openssh-server

Check the SSH installation:

> $ dpkg -l | grep ssh

> $ vim /etc/ssh/sshd_config

> In line 13 we will have the comment: #Port 22, change it to Port 4242.

> $ 13	Port 4242

> On line 32 we will have the comment: #PermitRootLogin prohibit-password, change it to:

> $ 32	PermitRootLogin no

---

</p>
<p align="center">
<img src="https://i.imgur.com/WjJmGIJ.png" width="350">
<p/>

---

#### :heavy_check_mark: Installing and Configuring UFW :

---

Perform the UFW installation :

> $ sudo apt-get install ufw

Enable UFW :

> $ sudo ufw enable

Allow connections to your server through port 4242 :

> $ ufw allow 4242

Check the UFW settings :

> $ ufw status

> $ dpkg -l | grep ufw

---

#### :heavy_check_mark: Network adapter configuration :

---

Add forward rule for VirtualBox :

> 1. Go to VirtualBox-> Choose the VM->Select Settings

> 2. Choose “Network”-> “Adapter 1"->”Advanced”->”Port Forwarding”

> 3. Add new rule (little green button on right top side) and next parameters:

```
**************************************************************************
* Protocol       Host IP       Host Port       Guest IP       Guest Port *
* TCP            127.0.0.1     4242            		      4242       *
**************************************************************************
```

> 4. In your host (physical) machine open Terminal and run
[ssh <username>@localhost -p 4242]

Now you can control your virtual machine from the host terminal!

---
 
