#!/usr/bin/env bash
DOTFILE="${1}"
for FILE in "${DOTFILE}"/*.bash; do
  FILE_NAME="$(basename "${FILE}")"
  # remove section ( eg. #:somefile.bash:[+-] )
  sed -i '/#:'"${FILE_NAME}"':[+]/,/#:'"${FILE_NAME}"':[-]/d' "${HOME}/.${DOTFILE}"
  # add the section back
  {
    echo "#:${FILE_NAME}:+"
    cat "${FILE}"
    echo "#:${FILE_NAME}:-"
  } >> "${HOME}/.${DOTFILE}"
done
