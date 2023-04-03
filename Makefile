SHELL := /usr/bin/env bash -euo pipefail -c

#https://www.gnu.org/software/make/manual/make.html
.NOTPARALLEL:

all: ${HOME}/.local/bin/starship \
	dotloader

${HOME}/.local/bin/starship:
	mkdir -p "${HOME}/.local/bin"
	curl -sS https://starship.rs/install.sh -o /tmp/install.sh
	chmod 700 /tmp/install.sh
	/tmp/install.sh -b "${HOME}/.local/bin"


dotloader:
	./dotloader.bash bashrc
	./dotloader.bash bash_profile


.PHONY: dotloader
