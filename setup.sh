
for step in $(dirname $0)/* ; do
    . $step
done

# Reboot and run manual steps after staring kde
reboot

