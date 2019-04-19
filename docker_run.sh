#!/usr/bin/env bash
docker run --rm --runtime=nvidia -ti -v $(pwd)/shared:/home/sim/shared --network=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --cap-add=SYS_PTRACE simbotic-cortex
