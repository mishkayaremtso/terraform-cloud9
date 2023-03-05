resource "aws_iam_group" "developer_group" {
  name = "Developer"
}

resource "aws_iam_policy" "developer_cloud9_policy" {
  name   = "DeveloperCloud9Policy"
  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "cloud9:*"
            ],
            "Resource": [
                "${aws_cloud9_environment_ec2.cloud9_instance.arn}"
            ]
        }
    ]
}
POLICY
}

resource "aws_iam_group_policy_attachment" "developer_cloud9_policy_attachment" {
  policy_arn = aws_iam_policy.developer_cloud9_policy.arn
  group      = aws_iam_group.developer_group.name
}

resource "aws_iam_user" "cloud9_user" {
    name = var.cloud9_user_name
}

resource "aws_iam_access_key" "cloud9_user_access_key" {
    user = aws_iam_user.cloud9_user.name
}

resource "aws_iam_user_group_membership" "cloud9_user_group" {
    user = aws_iam_user.cloud9_user.name
    groups = [
        aws_iam_group.developer_group.name
        ]
}
