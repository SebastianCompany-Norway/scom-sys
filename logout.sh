#!/bin/sh

/usr/bin/perl /usr/local/bin_inpc/restore_inpc.pl  

session=`loginctl session-status | head -n 1 | awk "{print $1}"`
loginctl terminate-session $session
