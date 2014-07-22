#!/usr/bin/env sh

####
## A nice launch shortcut for running ansible playbooks against Ansible hosts
## on OSX
####

export ANSIBLE_HOST_KEY_CHECKING=False

PRIVATE_KEY_FILE=`find /Applications/Vagrant/ | grep "/keys/vagrant$"`
/usr/bin/env ansible-playbook --private-key=$PRIVATE_KEY_FILE "$@"
