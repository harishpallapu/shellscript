#! /bin/bash

#this is looping for severy 10seconds

file=/root/shells/test
trap "rm -rf $file && this file is deleted; exit " 0 2 9 15 

#(0=NO error .2 =crtl+c stop 9=ctrl+z kill 15=terminate)
#kill from another terminal 

echo "pid is $$" # $$ show present file id
while (( COUNT < 10 ))
do
  sleep 10
  ((  COUNT ++ ))
  echo $COUNT
done
exit 0
 
#(ctrl+c , ctrl+z )

trap "echo exit command is detected " 0
echo "hello world "
exit 0 
