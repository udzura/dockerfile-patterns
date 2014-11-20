#!/bin/bash
# This is wrapper.sh
# placeholder html to prevent permission error
cat << EOF > /var/cache/munin/www/index.html
<html>Munin has not run yet.  Please try again in a few moments.</html>
EOF

# make accessible from munin
chown -R munin:munin /var/lib/munin /var/log/munin
chown munin:munin /var/cache/munin/www/index.html

# start cron
/usr/sbin/cron &
# start local munin-node
/usr/sbin/munin-node > /dev/null 2>&1 &
# start apache
/usr/sbin/apache2ctl -DFOREGROUND
