#!/bin/sh

echo "Updating the definitions and starting the system scan" && \
    sudo freshclam && sudo clamscan -r / && \ 
    echo "System scan completed"
