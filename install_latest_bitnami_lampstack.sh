#!/bin/bash
#############
# install_latest_bitnami_lampstack.sh
# Fetches and installs most recent version of 64bit Linux Bitnami Lampstack
# @author Matt Gleeson <matt@mattgleeson.net>
# @version 0.00.002 not yet fully functional, haven't finished yet, just writing down the code somewhere while I'm thinking of it so I don't forget
# @license: GPL2
#############

exit #remove this once it's more complete, just prevents running until it's more done-ish so it doesn't potentially do terrible things to your cat and abuse your mother and stuff
#todo: getopts

### my original one-liners
# URL=$(lynx -dump -listonly https://bitnami.com/stack/lamp/installer | grep -P -e "(?<=\d)-linux-x64-installer.run" | awk '{print $2}' | sort -Vr | uniq | grep -m 1 -e "x64") && wget --no-check-certificate "$URL" 
# URL=$(lynx -dump -listonly https://bitnami.com/stack/moodle/installer | grep -P -e "(?<=\d)-linux-x64-installer.run" | awk '{print $2}' | sort -Vr | uniq | grep -m 1 -e "x64") && wget --no-check-certificate "$URL" 
# URL=$(lynx -dump -listonly https://bitnami.com/stack/lamp/modules | grep -P -e "(?<=moodle-\d\.\d\.\d-\d)-module-linux-x64-installer.run" | awk '{print $2}' | sort -Vr | uniq | grep -m 1 -e "x64") && wget --no-check-certificate "$URL"


# download latest bitnami lampstack
URL=$(lynx -dump -listonly https://bitnami.com/stack/lamp/installer | grep -P -e "(?<=\d)-linux-x64-installer.run" | awk '{print $2}' | sort -Vr | uniq | grep -m 1 -e "x64")
#todo: check previous executed successfully, above and below

# todo: options checking for which method the user wishes to pursue, all in one application stack or lamp stack with separate modules and which modules to download/install
# URL=$(lynx -dump -listonly https://bitnami.com/stack/moodle/installer | grep -P -e "(?<=\d)-linux-x64-installer.run" | awk '{print $2}' | sort -Vr | uniq | grep -m 1 -e "x64") && wget --no-check-certificate "$URL" 

# URL=$(lynx -dump -listonly https://bitnami.com/stack/lamp/modules | grep -P -e "(?<=moodle-\d\.\d\.\d-\d)-module-linux-x64-installer.run" | awk '{print $2}' | sort -Vr | uniq | grep -m 1 -e "x64") && wget --no-check-certificate "$URL"



wget --no-check-certificate "$URL"  ## Only have no-check-cert on here because the VM I initially wrote the original one-liner for this on had a screwy OpenSSL for some reason

## todo: get filename of download and apply chmod +x, generate options file? , then run installer in unattended mode
