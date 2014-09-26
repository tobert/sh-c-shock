#!/bin/ruby

print "pass-through environment:\n"
system("env > /tmp/ruby.thru.env.sh")

print "safe environment:\n"
system({"PATH" => "/bin"}, "env > /tmp/ruby.safe.env.sh")
print "uh oh!\n"

print "now with unsetenv_others => true\n"
spawn({"PATH" => "/bin"}, "env > /tmp/ruby.unset.env.sh", {:unsetenv_others => true})

