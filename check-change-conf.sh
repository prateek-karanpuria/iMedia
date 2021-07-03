#!/bin/sh
# This file can be referrenced whenever we are adding whitelabel solution.
# This file will trigger service restart of httpd (apache) whenever new host entry added in httpd.conf file.

dir1=/etc/httpd/conf.d/
while inotifywait -qqre modify "$dir1"; do
    sudo service httpd restart
done
