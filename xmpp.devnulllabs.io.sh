#!/bin/bash

docker run -d \
    -p 5269:5269 \
    -p 5222:5222 \
    -v /root/ssl/:/etc/prosody/certs/ \
    -v /var/log/prosody:/var/log/prosody \
    --name prosody \
    xmpp.devnulllabs.io
