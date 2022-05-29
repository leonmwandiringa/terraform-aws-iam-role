resource "aws_iam_role_policy" "default" {
  name = "${var.name}-policy"
  role = aws_iam_role.default.id

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": ${jsonencode(var.policies)}
}
EOF

}