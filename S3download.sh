#!/bin/bash
BUCKET_NAME="hello-bucket-45"
aws s3 cp s3://${BUCKET_NAME} ./
echo "download completed successfully"