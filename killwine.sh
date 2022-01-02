#!/bin/bash

#killing wineserver
wineserver -k;
killall -9 wine wineserver;

#killing all exe process
for i in `ps ax|egrep "*\.exe"|grep -v 'egrep'|awk '{print $1 }'`;
do kill -9 $i;
done
