resource "aws_s3_bucket" "test_bucket" {
  bucket = var.test_bucket_name

  tags = {
    Name        = var.test_bucket_name
    Environment = "Local"
  }
}

resource "aws_s3_bucket_acl" "test_bucket_acl" {
  bucket = aws_s3_bucket.test_bucket.id

  acl = "private"
}

