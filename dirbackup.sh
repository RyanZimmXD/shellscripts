#!/bin/bash
#This script backs up a directory of your choice
 
echo -e "What directory do you want to back up?-->\c"
read ANS
 
echo "Performing backup....."
sleep 3
FILE='echo $ANS | sed s#/#-#g'
DATE='date +%F'
tar -zcvf ~/backup-$FILE-$DATE.tar.gz $ANS
 
echo "Backup performed to ~/backup-$FILE-$DATE.tar.gz"

echo -e "\n\n RAID Configuration: \n\n" >>$FILENAME.report
mdadm --detail /dev/md0 >>$FILENAME.report
