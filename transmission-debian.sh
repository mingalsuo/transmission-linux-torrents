#!/usr/bin/env bash
# © 2024 Markus Ingalsuo (mingalsuo)

for A in amd64 arm64; do elinks -no-numbering -dump https://cdimage.debian.org/debian-cd/current/$A/ | grep http | grep bt | uniq | cut -d " " -f 5 | xargs -n1 elinks -no-numbering -dump | grep http | grep iso.torrent | uniq | cut -d " " -f 5; done | xargs -n1 transmission-remote -n transmission:transmission -a
