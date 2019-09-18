#!/bin/bash
set -ex

version=$DOCKER_TAG

if [ "$version" == latest ]; then
    version=oca
fi

docker image build \
    --file "$DOCKER_TAG.Dockerfile" \
    --tag "$IMAGE_NAME:$version" \
    .
