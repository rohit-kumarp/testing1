# Maximum wait time for build to Complete is 5 mint. If not Completed Failed
# polling after every 5 Seconds
result=`curl -s -I https://admin.qa1freshbots.com/hello | grep HTTP/2 | awk {'print $2'}`
QUERY_TIMEOUT_SECONDS=5
echo "** status code is : $result ***"
count=0
	while [ "${result}" != 200 ] 
	do
		sleep $QUERY_TIMEOUT_SECONDS
		result=`curl -s -I curl https://admin.qa1freshbots.com/hello | grep HTTP/2 | awk {'print $2'}`
  		count=$(( $count + 1 ))
  	if [ "$count" == 25 ]||[ "$count" == 50 ];then
  			echo "** status code is : $result ***"
  	fi
	if [ $count = 60 ]; then
		echo "*** error: Could not get status code. Please check manually ***"
		exit 1
	fi
	done