#!/bin/sh

echo "Init Anbox..."


mkdir /dev/binderfs
echo "binderfs dir created"

mount -t binder binder /dev/binderfs
echo "binderfs mounted"

echo "Starting network bridge..."
sh /usr/bin/anbox-bridge.sh start


echo "Done!"
