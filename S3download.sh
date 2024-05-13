#!/bin/bash
AWS_ACCESS_KEY_ID=AKIATCKAOF35SS4NIYTK
AWS_SECRET_ACCESS_KEY=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
BUCKET_NAME=hello-bucket-45
aws s3 cp s3://${BUCKET_NAME} ./
echo "download completed"