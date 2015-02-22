#!/bin/bash

set -e

has_update_run=

function Install {
    local package=$1
    if [[ -z "$has_update_run" ]]; then
        apt-get update
        has_update_run=1
    fi
    apt-get install -y $package
}

### Check environment

if [[ $SUDO_USER != vagrant ]]; then
    echo 'Please run "vagrant up" or "vagrant provision" to run this script' >&2
    exit 1
fi

### Install dependencies

git --version >/dev/null 2>&1 || Install git
rake --version >/dev/null 2>&1 || Install rake
ruby -e "require 'korundum4'" >/dev/null 2>&1 || Install korundum
ruby -e "require 'mocha'" >/dev/null 2>&1 || Install ruby-mocha
ruby -e "require 'builder'" >/dev/null 2>&1 || Install ruby-builder
[[ -f /usr/lib/libicui18n.so.48 ]] || Install libicu48
which xvfb-run >/dev/null || Install xvfb
