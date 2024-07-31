#!/usr/bin/env bash
# © 2024 Markus Ingalsuo (mingalsuo)

for A in armhf arm64; do elinks -no-numbering -dump https://downloads.raspberrypi.com/raspios_$A/images/ | grep http | tail -n1 | cut -d " " -f 5| xargs -n1 elinks -no-numbering -dump | grep torrent | tail -n1 | cut -d " " -f 5; done | xargs -n1 transmission-remote -n transmission:transmission -a
