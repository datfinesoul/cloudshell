#!/usr/bin/env bash
mkdir -p "${HOME}/.local/bin"
cd /tmp
curl -sS https://starship.rs/install.sh -o install.sh
chmod 700 install.sh
./install.sh -b "${HOME}/.local/bin"
