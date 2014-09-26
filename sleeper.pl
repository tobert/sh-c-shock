#!/bin/perl

use strict;
use warnings;

print "sleeping for 5 seconds ...\n";
system("sleep 5 >/tmp/sleeper.thru.env.sh 2>/dev/null");
