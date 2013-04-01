#!/usr/bin/bash
imapactive=`ps -ef | grep offlineimap | grep -v grep | wc -l`
# let's remove -q we want our flags to be honored
mailsync="/usr/bin/offlineimap -u quiet >/dev/null 2>&1"

# kill offlineimap if active, sometimes it hangs
case $imapactive in
'1')
   killall offlineimap
;;
esac

$mailsync
