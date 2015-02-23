#!/bin/bash -e

IMAGE_NAME=jacoelho/crane-image:latest

docker run -i --rm -t \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $(pwd):$(pwd) \
  -w $(pwd) ${IMAGE_NAME} $@
