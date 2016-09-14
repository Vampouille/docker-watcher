#!/bin/bash

exec inotifywait --monitor -r --timefmt "%a, %d %b %Y %T %z"  --format "%T - %w - %f - %e" \
        -e modify \
        -e attrib \
        -e move \
        -e move_self \
        -e create \
        -e delete \
        -e delete_self \
        -e unmount \
        /mnt/volume
