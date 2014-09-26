#!/bin/perl

use strict;
use warnings;

print "pass-through environment:\n";
system("env > /tmp/perl.thru.env.sh");

print "safe environment: ";
{
  local %ENV = ("PATH" => "/bin");
  system("env > /tmp/perl.safe.env.sh");
}
print "\n";
