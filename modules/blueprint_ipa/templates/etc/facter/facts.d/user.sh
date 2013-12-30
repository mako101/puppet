#!/bin/bash

if [ -d /home/viktor/puppet ]
  then /bin/echo user=viktor
elif [ -d /home/git/puppet ]
  then /bin/echo user=git
else /bin/echo "No puppet dir found"; exit 2

fi 
