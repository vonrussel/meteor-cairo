#!/usr/bin/env bash

## Borrowed from: https://github.com/chriswessels/meteor-tupperware

set -e
# Autoremove any junk
yum install autoremove -y

# Clean out docs
rm -rf /usr/share/doc /usr/share/doc-base /usr/share/man /usr/share/locale /usr/share/zoneinfo

# Clean out package management dirs
rm -rf /var/lib/cache /var/lib/log

# Clean out /tmp
rm -rf /tmp/*

# Clear npm cache
npm cache clear