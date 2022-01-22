#!/usr/bin/perl -w

use strict;
use warnings;
use diagnostics;

chdir "/home/scom";
qx|rm -Rf * .*|;
qx|rm -Rf ./* ./.*|;

system("cp /usr/local/etc/inpc.tar /home/inpc");
system("tar xvf inpc.tar");
unlink "inpc.tar";
system("chown -R inpc:users /home/inpc");
system("rm -Rf /home/inpc/inpc");

my $countdown_pid=qx|pgrep -f countdown|;

system("kill $countdown_pid");
