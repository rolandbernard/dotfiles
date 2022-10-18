#!/bin/bash

cd $(dirname $0)/..

export OS_NAME=$(cat /etc/*-release | awk -F \" '/^NAME="(.*)"$/ { print $2 }')
export HOST_NAME=$(hostname)

for step in scripts/setup/* ; do
    . $step
done

# Reboot and run manual steps after this

