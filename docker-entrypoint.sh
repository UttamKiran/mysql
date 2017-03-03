#!/bin/bash
  /etc/init.d/mysql start && \
  sleep 5 && \
  mysql -uroot -pAdmin@123 -e "CREATE DATABASE joomla" && \
   mysql -uroot -pAdmin@123 joomla < /tmp/joomla.sql && \
  tail -F -n0 /etc/hosts 
exec "$@"
