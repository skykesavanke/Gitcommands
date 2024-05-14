#!/bin/bash
BUCKET_NAME="keerthanas3"
download_dir="/mnt/c/Users/kesavank/GitS3download"
if ! which aws &> /dev/null; then
  echo "Error: aws command not found"
  exit 1
fi
aws s3 cp "s3://${BUCKET_NAME}" "${download_dir}" --recursive --quiet

echo "download completed successfully"
echo "Deletion completed"