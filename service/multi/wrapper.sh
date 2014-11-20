#!/bin/bash

/usr/sbin/sshd -D >> /var/log/container.log &
/usr/bin/mongod --dbpath /var/spool/mongodb >> /var/log/container.log &

tail -f /var/log/container.log
