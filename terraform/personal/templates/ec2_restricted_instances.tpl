{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowDescribeForAllResources",
      "Effect": "Allow",
      "Action": [
        "ec2:Describe*"
      ],
      "Resource": "*"
    },
    {
      "Sid": "OnlyAllowCertainInstanceTypesToBeCreated",
      "Effect": "Allow",
      "Action": [
        "ec2:RunInstances"
      ],
      "Resource": [
        "arn:aws:ec2:${aws_region}:${aws_account_number}:instance/*"
      ],
      "Condition": {
        "StringEquals": {
          "ec2:InstanceType": [
            "t2.nano",
            "t2.micro",
            "t2.small"
          ]
        }
      }
    },
    {
      "Sid": "AllowAdditionalResourcesToSupportLaunchingEC2ClassicInstances",
      "Effect": "Allow",
      "Action": [
        "ec2:RunInstances"
      ],
      "Resource": [
        "arn:aws:ec2:${aws_region}:${aws_account_number}:key-pair/*",
        "arn:aws:ec2:${aws_region}:${aws_account_number}:network-interface/*",
        "arn:aws:ec2:${aws_region}:${aws_account_number}:security-group/*",
        "arn:aws:ec2:${aws_region}:${aws_account_number}:subnet/*",
        "arn:aws:ec2:${aws_region}:${aws_account_number}:volume/*",
        "arn:aws:ec2:${aws_region}::image/ami-*"
      ]
    },
    {
      "Sid": "AllowUserToStopStartDeleteInstances",
      "Effect": "Allow",
      "Action": [
        "ec2:TerminateInstances",
        "ec2:StopInstances",
        "ec2:StartInstances"
      ],
      "Resource": "arn:aws:ec2:${aws_region}:${aws_account_number}:instance/*"
    }
  ]
}
