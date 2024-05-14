#!/bin/bash
BUCKET_NAME="hello-bucket-45"
download_dir="C:\Users\kesavank\Git practice s3 files"
if ! which aws &> /dev/null; then
  echo "Error: aws command not found"
  exit 1
fi
aws s3 cp s3://"${BUCKET_NAME}"/"$download_dir" --quiet
aws s3 rm s3://"${BUCKET_NAME}" --recursive

echo "download completed successfully"
echo "Deletion completed"