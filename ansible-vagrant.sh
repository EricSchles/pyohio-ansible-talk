#!/usr/bin/env sh

export ANSIBLE_HOST_KEY_CHECKING=False

PRIVATE_KEY_FILE=`find /Applications/Vagrant/ | grep "/keys/vagrant$"`
/usr/bin/env ansible-playbook --private-key=$PRIVATE_KEY_FILE "$@"
