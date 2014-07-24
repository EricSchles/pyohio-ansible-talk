#!/usr/bin/env bash

####
## A nice launch shortcut for running ansible playbooks against Ansible hosts
## on OSX
####

export ANSIBLE_HOST_KEY_CHECKING=False;

if [ `uname` = "Darwin" ]; then
    PRIVATE_KEY_FILE=`find /Applications/Vagrant/ | grep "/keys/vagrant$"`;
else
    # Oy vey, pretty ugly atm but not sure where this will end up on Linux distros
    pushd /;
    PRIVATE_KEY_FILE=`find -name vagrant 2> /dev/null| grep "/keys/vagrant$"`;
    popd;
fi
/usr/bin/env ansible-playbook --private-key=$PRIVATE_KEY_FILE "$@"
