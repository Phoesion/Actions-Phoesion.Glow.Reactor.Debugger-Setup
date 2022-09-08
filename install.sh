#!/bin/sh
echo Getting reactor version $2 ...
wget -q https://packages.phoesion.com/$1/dists/linux/main/versions/$2/binary-amd64/Phoesion.Glow.Reactor.Debugger.deb

echo Updating apt sources ...
apt-get update > /dev/null

echo Installing package ...
apt-get install -y ./Phoesion.Glow.Reactor.Debugger.deb

echo Cleaning up ..
rm "Phoesion.Glow.$3.deb"