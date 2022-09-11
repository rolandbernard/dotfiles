
export OS_NAME=$(cat /etc/*-release | awk -F \" '/^NAME="(.*)"$/ { print $2 }')
export HOST_NAME=$(hostname)

for step in $(dirname $0)/* ; do
    . $step
done

# Reboot and run manual steps after staring kde
reboot

