#!/bin/bash

BUCKET_NAME="keerthanas3bucket1"
download_dir="/mnt/c/Users/kesavank/GitS3download"
if [[ aws s3 ls "s3://${BUCKET_NAME}" -gt 0]]; then
   aws s3 cp "s3://${BUCKET_NAME}" "${download_dir}" --recursive --quiet; then
    echo "Download completed successfully"
  else
    echo "Error: Download failed"
    exit 1
  fi

