#!/bin/node

var exec = require('child_process').exec;

console.log("pass-through environment:");
exec('env > /tmp/node.thru.env.sh').unref();

// explicity set the envvars to known-safe values
console.log("safe environment:");
var opts = { env: { PATH: "/bin" } };
exec('env > /tmp/node.safe.env.sh', opts).unref();
