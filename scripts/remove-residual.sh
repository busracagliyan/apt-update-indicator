#!/bin/bash

echo "starting..."

value=$(
    dpkg -l | grep '^rc'| awk '{print $2}'
)

/usr/bin/sudo apt-get remove --purge ${value} -yq

echo "done"
