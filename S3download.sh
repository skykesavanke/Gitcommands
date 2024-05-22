#!/bin/bash
BUCKET_NAME="keerthanas3bucket"
download_dir="/mnt/c/Users/kesavank/GitS3download"
download="true"
if ! which aws &> /dev/null; then
  echo "Error: aws command not found"
  exit 1
elif [[ "$download" == "true"]]; then
  aws s3 cp "s3://${BUCKET_NAME}" "${download_dir}" --recursive --quiet
  echo "Download completed successfully"
else 
    aws s3 rm "s3://${BUCKET_NAME}" --recursive
    echo "Deletion completed"
fi