
resource "aws_s3_bucket" "finance" {
  bucket = "finance-54331666"
  tags = {
    Description="finance and payroll"
  }
}

resource "aws_s3_bucket_object" "finance-object" {
  content = "/home/oday/Desktop/terraform-for-beginners/admin-policy.json"
  key = "admin-policy.json"
  bucket = aws_s3_bucket.finance.id
}

