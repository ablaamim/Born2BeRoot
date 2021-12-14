echo -ne "ARCHITECTURE: "; uname -a
echo -ne "CPU PHYSICAL: "; grep -c processor /proc/cpuinfo
echo -ne "VIRTUAL CPU: "; cat /proc/cpuinfo | grep processor | wc -l
echo -ne "MEMORY USAGE: "; free -m | awk 'NR==2{printf "%s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2}'
echo -ne "DISK USAGE: "; df -h | awk '$NF=="/"{printf "%d/%dGB (%s)\n", $3,$2,$5}'
echo -ne "CPU LOAD: "; top -bn1 | grep load | awk '{printf"%.2f%%\n", $(NF-2)}'
echo -ne "LAST BOOT: "; who | awk '{printf $3 }' | tr '\n' ' ' && who | awk '{printf $4}'
echo -ne "\nLVM USE: "; if cat /etc/fstab | grep -q "/dev/mapper/"; then echo "yes"; else echo "no";fi
echo -ne "CONNEXIONS TCP: "; cat /proc/net/tcp | wc -l | wak '{print $1-1}' | tr '\n' ' ' && echo "ESTABLISHED"
echo -ne "USER LOG: "; w | wc -l | awk '{print$1-2}'
echo -ne "NETWORK: "; echo -n "IP" && ip route list | grep default | awk '{print $3}' | tr '\n' ' ' && echo -n "9" && ip link show | grep link/ether | awk '{print $2}' | tr '\n' ')' && printf "\n"
echo -ne "SUDO COUNTER: "; journalctl _COMM=sudo | grep COMMAND | wc -l | tr '\n' ' ' && echo Comands
printf "\n"