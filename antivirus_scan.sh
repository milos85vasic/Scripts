#!/bin/sh

if [ -z "$1" ]; then

    WHAT="/"
    
else

    WHAT="$1"
fi

echo "Updating the virus definitions and starting the scan" &&
    sudo freshclam &&
    echo "We are about to scan: $WHAT" &&
    clamscan -r "$WHAT" &&
    echo "Scan completed"
