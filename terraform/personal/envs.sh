#!/bin/bash
set -x

export AWS_ACCESS_KEY="insertawskeyhere"
export AWS_SECRET_KEY="insertsecrethere"
export TF_VAR_aws_account_number="insertawsaccounthere"

export TF_VAR_aws_account=wicksy
export TF_VAR_stack=S3IAMPoliciesAndUsers

mkdir -p ./${TF_VAR_aws_account}/${TF_VAR_stack} 2>/dev/null
set +x
