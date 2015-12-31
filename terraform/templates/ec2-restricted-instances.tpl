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
        "arn:aws:ec2:${region_name}:${aws_account}:instance/*"
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
        "arn:aws:ec2:${region_name}:${aws_account}:key-pair/*",
        "arn:aws:ec2:${region_name}:${aws_account}:network-interface/*",
        "arn:aws:ec2:${region_name}:${aws_account}:security-group/*",
        "arn:aws:ec2:${region_name}:${aws_account}:subnet/*",
        "arn:aws:ec2:${region_name}:${aws_account}:volume/*",
        "arn:aws:ec2:${region_name}::image/ami-*"
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
      "Resource": "arn:aws:ec2:${region_name}:${aws_account}:instance/*"
    }
  ]
}
