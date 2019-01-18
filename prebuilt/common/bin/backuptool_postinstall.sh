#!/system/bin/sh
#
# Future-OS A/B OTA Postinstall Script
#

/postinstall/system/bin/backuptool_ab.sh backup
/postinstall/system/bin/backuptool_ab.sh restore

sync

exit 0
