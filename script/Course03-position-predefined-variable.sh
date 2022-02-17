#！ /usr/bin/bash

echo $1
echo $2
echo ${3}

echo "all variable: $*"
echo "all variable: $@"
echo "number of variable: $#"
echo "当前进程PID： $$"

if [ $# -eq 0 ]; then
  echo "usage: `basename $0` file "
  exit
fi

if [ ! -f $1 ]; then
  echo "error file "
  exit
fi

for ip in `cat $1`
do
  ping -c1 $ip &> /dev/null
  if [ $? -eq 0 ]; then
    echo "$ip is up"
  else
    echo "$ip is down"
  fi
done

exit

