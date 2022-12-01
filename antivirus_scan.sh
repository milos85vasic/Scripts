#!/bin/sh

echo "Updating the AntiVirus definitions and starting the system scan" && \
    sudo freshclam && sudo clamscan -r / && \ 
    echo "Scan completed"
