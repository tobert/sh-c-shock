#!/bin/bash

echo "pass-through environment: (already failed ^)"
env > /tmp/bash.thru.env.sh

echo "safe environment:"
env -i PATH=/bin env > /tmp/bash.safe.env.sh
