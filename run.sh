#!/usr/bin/env bash

docker build -t barktracker . && \
  docker run -t -i \
  -v $(pwd):/app \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  --device=/dev/snd:/dev/snd \
  barktracker

