#!/bin/bash

#################

# Author: Ramesh Patil
# Date: 08 Aug 2023
# Version: v1
# This script will report the AWS resource usage

#################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# List S3 Buckets
echo "Print list of S3 buckets"
aws s3 ls >>resourceTracker

# list EC2 instances
echo "Print list of EC2 Instance ID"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >>resourceTracker

# list AWS Lambda 
echo "Print list of Lambda Functions"
aws lambda lis-functions >>resourceTracker

# list IAM users
echo "Print list of IAM users"
aws iam list-users >>resourceTracker




