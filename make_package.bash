#!/bin/bash

fpm -s dir -t deb \
    --name "grizzly-network" \
    --prefix "/usr/share/grizzly-network" \
    --version 0.1.0 \
    --architecture all \
    --after-install debian/postinst \
    --deb-templates debian/templates \
    --deb-config debian/config \
    --depends dnsmasq \
    --depends hostapd \
    --depends python-empy \
    ./templates
