#!/bin/bash
# Software that is not packaged

if [ "$HOST_NAME" == "rolandlinux" ]
then

# Install Marvin
mkdir -p $HOME/.local/share/applications
wget -qO- https://raw.githubusercontent.com/rolandbernard/marvin/master/install.sh | bash

fi
