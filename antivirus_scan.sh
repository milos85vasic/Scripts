#!/bin/sh

if [ -z "$1" ]; then

    WHAT="/"
    
else

    WHAT="$1"
fi

echo "Updating the definitions and starting the system scan" &&
    sudo freshclam &&
    echo "We are about to scan: $WHAT" &&
    clamscan -r "$WHAT" &&
    echo "Scan completed"
