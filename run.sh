#!/bin/sh
#
# Genera la cápsula de PlanetaLibre.
#

cd ~/pkgs/planetalibre-gemini || exit

planetalibre \
  -d reisub.nsupdate.info/planetalibre \
  -o docs

ncftpput -f ~/configs/login.cfg -a -t 3 -R / docs/.
