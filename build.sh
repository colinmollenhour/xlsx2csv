#!/bin/bash

docker build . -t xlsx2csv:latest
id=$(docker create xlsx2csv:latest)
docker cp $id:/app/go.sum .
docker cp $id:/app/xlsx2csv .
docker rm -v $id
