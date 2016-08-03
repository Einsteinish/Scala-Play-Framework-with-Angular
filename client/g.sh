#!/bin/bash

pID=`pgrep grunt`
echo "pid=$pID"
if [ -z "$pID" ] #check empty
then
   echo "Not running"
   nohup grunt serve >/dev/null 2>&1 &
else
   echo "Running"
fi

