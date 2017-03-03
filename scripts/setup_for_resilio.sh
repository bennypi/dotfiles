#!/bin/bash
mkdir -p ~/sync
sudo chown rslsync ~/sync
sudo chgrp rslsync ~/sync
sudo usermod -a -G rslsync benny
sudo systemctl enable resilio-sync
sudo systemctl start resilio-sync
