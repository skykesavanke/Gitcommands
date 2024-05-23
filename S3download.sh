#!/bin/bash
BUCKET_NAME="keerthanas3bucket1"
download_dir="/mnt/c/Users/kesavank/GitS3download"
buckets=$(aws s3 ls "s3://$BUCKET_NAME/" --recursive | wc -l)
echo "No of buckets: $buckets"
if [ "$buckets" -gt 0 ]; then
    aws s3 cp "s3://${BUCKET_NAME}" "${download_dir}" --recursive --quiet
    echo "Download completed successfully"
    aws s3 rm "s3://${BUCKET_NAME}" --recursive
else
    echo "No files found"
fi

