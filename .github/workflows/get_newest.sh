#!/bin/bash

wget -qN  https://launchermeta.mojang.com/mc/game/version_manifest.json
MCVER=`sed -n -e '/\"latest\"/,/}/ s/.*\"snapshot\": \"\([^\"]*\)\".*/\1/p' < version_manifest.json`
rm -Rf version_manifest.json
echo "newest_mc=$MCVER" >> $GITHUB_ENV
