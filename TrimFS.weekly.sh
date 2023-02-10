 #!/bin/bash
LOG=/var/log/TrimFS.log
DATE=$(date +%m-%d-%Y-%I:%M%p)

echo "----------$DATE--------" |tee -a $LOG
fstrim -a -v | tee -a $LOG
echo "------------------------------------" | tee -a $LOG
