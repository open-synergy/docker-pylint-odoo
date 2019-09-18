#!/bin/bash
set -ex

version=$DOCKER_TAG

docker image build \
    --file "$version.Dockerfile" \
    --tag "$IMAGE_NAME:$version"
