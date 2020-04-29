#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )"

chmod a+x "gifoverlay.sh"


if cp "gifoverlay.sh" "/usr/local/bin/gifoverlay"
then
    printf "%s\n" "Successfully installed '/usr/local/bin/gifoverlay'"
else
    printf "%s\n" "Failure" \
           "Error copying file, try running install script as sudo"
    sleep 1
    exit 1
fi

sleep 1
