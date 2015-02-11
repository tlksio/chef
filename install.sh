#!/bin/bash

# This runs as root on the server

chef_binary=/usr/bin/chef-solo

# Are we on a vanilla system?
if ! test -f "$chef_binary"; then
    export DEBIAN_FRONTEND=noninteractive
    # Upgrade headlessly (this is only safe-ish on vanilla systems)
    aptitude update &&
    apt-get -o Dpkg::Options::="--force-confnew" --force-yes -fuy dist-upgrade &&
    # Install Chef
    apt-get install -y chef
fi &&

"$chef_binary" -c solo.rb -j solo.json
