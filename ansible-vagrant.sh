PRIVATE_KEY_FILE=`find /Applications/Vagrant/ | grep "/keys/vagrant$"`

/usr/bin/env ansible-playbook --private-key=$PRIVATE_KEY_FILE "$@"
