#!/bin/bash

set -e

[[ $USER = vagrant ]] || exec vagrant ssh -- /vagrant/test.sh

cd /mnt/git/kaya

git describe
DISPLAY=localhost:1.0 xvfb-run rake test
