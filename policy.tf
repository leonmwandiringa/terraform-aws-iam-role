resource "aws_iam_role_policy" "default" {
  count = length(var.policies) > 0 ? length(var.policies) : 0
  name = "${var.role_name}-policy"
  role = aws_iam_role.default.id

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": ${jsonencode(var.policies)}
}
EOF

}