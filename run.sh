#!/bin/bash

set -e

[[ $USER = vagrant ]] || exec vagrant ssh -- /vagrant/run.sh

cd /mnt/git/kaya
./kaya-qt
