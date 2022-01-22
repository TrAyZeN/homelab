#!/bin/sh

for dir in "$PWD"/*/; do
    # Checks if dir contains a docker-compose.yml file
    if [ -n "$(ls -1 "$dir" | grep "docker-compose.yml")" ]; then
        docker-compose -f "$dir/docker-compose.yml" up -d
    fi
done
