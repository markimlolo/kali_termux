echo "[+]Installing Kali Arm 32 Minimal Version..."
echo
apt install proot wget tar -y
echo
echo "installed successfully.... :D"
echo
echo "Now Kali Nethunter Is Installing......."
echo
wget https://build.nethunter.com/kalifs/kalifs-latest/kalifs-armhf-minimal.tar.xz
echo
proot --link2symlink tar -xf kalifs-armhf-minimal.tar.xz
cd kali-armhf && echo "nameserver 8.8.8.8" > etc/resolv.conf

cd ../ && echo "proot --link2symlink -0 -r kali-armhf -b /dev/ -b /sys/ -b /proc/ -b /data/data/com.termux/files/home -b /system -b /mnt /usr/bin/env -i HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games TERM=$TERM /bin/bash --login" > startkali.sh

chmod 777 startkali.sh && termux-fix-shebang startkali.sh

cat startkali.sh > /data/data/com.termux/files/usr/bin/kali
chmod 700 /data/data/com.termux/files/usr/bin/kali
echo
echo 
echo "Now You Can Start Kali Linux (Nethunter) By :--> ./startkali.sh or kali"
;;
