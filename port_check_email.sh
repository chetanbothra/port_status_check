SERVICE=$1
DATE=`date`
OUTPUT=$(ps aux | grep [s]idekiq)
echo $OUTPUT
if [ "${#OUTPUT}" -gt 0 ] ;
then echo "$DATE: $SERVICE service running, everything is fine"
else
message="$DATE: $SERVICE is not running"
echo -e "$message" | mail -s "Service Monitoring" "chetan@bitcot.com"
fi
