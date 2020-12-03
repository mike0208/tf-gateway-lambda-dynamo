resource "aws_s3_bucket" "lambdabuck12345" {
  bucket = "lambdabuck12345"
  acl    = "private"
}

resource "aws_s3_bucket_object" "readbuck12345_object" {
  key                    = "readLambda"
  bucket                 = aws_s3_bucket.lambdabuck12345.id
  source                 = "readterra.zip"
}


resource "aws_s3_bucket_object" "writebuck12345_object" {
  key                    = "writeLambda"
  bucket                 = aws_s3_bucket.lambdabuck12345.id
  source                 = "writeterra.zip"
}

