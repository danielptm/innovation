resource "aws_s3_bucket" "b" {
  bucket = "nike-commerce-test-app-internal"
  acl    = "private"

  tags = {
    Name        = "test-bucket"
    Environment = "test"
  }
}