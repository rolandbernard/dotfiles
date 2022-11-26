#!/bin/bash

cd $(dirname $0)/..

if [ "$HOME" == "/root" ]
then
    echo "do not run this as root, or change \$HOME"
    exit 1
fi

export OS_NAME=$(cat /etc/*-release | awk -F \" '/^NAME="(.*)"$/ { print $2 }')
export HOST_NAME=$(hostname)

for step in scripts/setup/* ; do
    . $step
done

# Reboot and run manual steps after this

