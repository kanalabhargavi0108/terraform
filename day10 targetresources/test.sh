#!/bin/bash
resources=(
  "aws_s3_bucket.s3"
   "aws_instance.ec2"
)

for resource in "${resources[@]}"; do
  targets+=" -target=$resource"
done

terraform apply $targets -auto-approve
terraform destroy $targets -auto-approve