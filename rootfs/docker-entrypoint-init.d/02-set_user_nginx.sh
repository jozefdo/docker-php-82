#!/bin/sh
#modify nginx user
groupmod -g $user_guid nginx
echo "Moodify nginx group guid to $user_guid"
usermod -u $user_uid nginx
echo "Moodify nginx user uid to $user_uid"
chown -R $user_uid:$user_guid /var/log/nginx
