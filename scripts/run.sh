#! /bin/bash -e
docker run \
    --rm \
    -p 80:4567 \
    -e PUID=$(id -u) \
    -e PGID=$(id -g) \
    -e GOLLUM_OPTIONS="--config=/wiki/.config/config.rb" \
    -v /data/gollumWiki:/wiki \
    mygollum/wiki:0.1
