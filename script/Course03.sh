#！ /usr/bin/bash

ip=www.zhouzhicheng.com
#ping $ip

if ping -c1 $ip &>/dev/null; then
  echo "$ip is up"
else
  echo "$ip is down"
fi

ping -c1 $ip &>/dev/null
if [ $? -eq 0 ]; then
  echo "$ip is up"
else
  echo "$ip is down"
fi



read -p "please in input adress: " adress
echo "You input adress: $adress"

ping -c1 $adress &>/dev/null

if [ $? -eq 0 ]; then
  echo "$adress is up"
else
  echo "$adress is down"
fi

exit 0