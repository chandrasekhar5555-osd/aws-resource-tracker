#!/bin/bash




###########
#Author : Chandra
#Date : 11th Jan
#
#Version: V1
#
#
#
set -x #debug mode
#This script will report the AWS resource usuage
############
#
#
#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users
#
#list s3 buckets
echo "print list of s3 buckets"
aws s3 ls >> resourceTracker


#list EC2 instances
echo "print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker



#list lamda
echo "print list of lambda functions"
aws lambda list-functions  >> resourceTracker


#list IAM users
echo "print list of iam users"
aws iam list-users  >> resourceTracker
