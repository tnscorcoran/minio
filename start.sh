#! /bin/bash

#podman run --rm --name minio -e MINIO_ROOT_USER=minio -e MINIO_ROOT_PASSWORD=minio123 -v ${PWD}:/data:Z -p 9000:9000 -p 9090:9090 quay.io/minio/minio:RELEASE.2023-06-19T19-52-50Z server /data --console-address :9090

mkdir ${PWD}/data

podman run \
   -p 9000:9000 \
   -p 9090:9090 \
   -v ${PWD}/data:/data:Z \
   -e "MINIO_ROOT_USER=minio" \
   -e "MINIO_ROOT_PASSWORD=minio123" \
   quay.io/minio/minio server /data --console-address ":9090"
