#!/bin/bash

configFile=$1
if [[ ! -f $configFile ]] ; then
    echo 'File "$configFile" is not there, aborting.'
    exit
fi

cp -r $configFile /home/haadmin/haRpiDotFiles/

confFileName=${configFile##*/}
echo $confFileName
ln -s -f /home/haadmin/haRpiDotFiles/$confFileName $configFile
echo '$configFile moved, link created!'
