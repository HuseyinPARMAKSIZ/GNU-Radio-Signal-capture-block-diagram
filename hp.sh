#!/bin/bash
# Licensed under GPLv3
# created by "parmaksiz"

##for i in {1..200}
##do
bekle=3
tur=Wifi
##cihaz=Rpi3Bp-b827ebf1a717-i0.25s-l64K-b32M-t10s

cihaz=kisiselmi8-hiztesti
gtime=$(date "+%Y.%m.%d-%H.%M.%S")
fileName=1.$gtime.$tur.$cihaz
#sudo tcpdump -c1 host 10.9.9.90 and tcp and port 5201
sudo tcpdump -c1 ether host 1c:cc:d6:06:d9:50 -vvvv
#echo -e "-------------------------------------------------------------------\n"
#start=$(date +%s%N)/1000000000
python3 -u /home/pi/Desktop/izle.py;  echo -e "\n-------------------------------------------------------------------"
#pkill -f /home/pi/Desktop/izle.py
#end=$(date +%s%N)/1000000000
sleep $bekle
#echo -e "\nElapsed Time: $(($end-$start)) seconds, signal capture was successful"
#cp /home/pi/Desktop/Sinyal /home/pi/Desktop/All/$fileName
mv /home/pi/Desktop/Sinyal /home/pi/Desktop/All/$fileName #/media/pi/5EA3-8F78/DragonOS.doktora.calismalar/RF.Kayitlar/All/$fileName
#end1=$(date +%s%N)/1000000000
#toplam=$(($end1-$start))
#echo -e "-------------------------------------------------------------------\n"
#echo "Total Time: $toplam seconds, signal recording was successful"
#echo -e "-------------------------------------------------------------------\n"
sleep 1.5
##done
inspectrum -r 20e6 All/$fileName
#od -f -w8 /home/live/Desktop/$new_fileName > /home/live/Desktop/$new_fileName.IQ.txt
#cat /home/live/Desktop/$new_fileName.IQ.txt | head -n15000000 | awk '{print $3}' > /home/live/Desktop/$new_fileName.Q.txt
#sed 's/,/./g' /home/live/Desktop/$new_fileName.Q.txt > /home/live/Desktop/$new_fileName.Q.son.txt
#rm -rf /home/live/Desktop/$new_fileName.Q.txt
#rm -rf /home/live/Desktop/$new_fileName.IQ.txt
#mv /home/live/Desktop/$new_fileName* /media/live/5EA3-8F78/DragonOS.doktora.calismalar/RF.Kayitlar/Note8/

