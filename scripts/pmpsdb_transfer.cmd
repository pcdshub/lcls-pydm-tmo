#!/bin/bash  

ssh psbuild-rhel7.slac.stanford.edu /usr/bin/google-chrome-stable --disk-cache-size=16777216 --user-data-dir="$HOME/.config/google-chrome.$HOSTNAME" http://pspmpsdb:5000 &

