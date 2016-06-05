#!/bin/bash

#if pgrep "grunt" > /dev/null
if pgrep grunt 
then
   echo "Oops, grunt not running..."
   nohup grunt serve >/dev/null 2>&1 &
else
   echo "Ok, grunt is running..."
fi
