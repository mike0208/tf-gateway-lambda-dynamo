resource "aws_lambda_function" "writeLambda" {

  function_name = "writeLambda"
  s3_bucket     = "lambdabuck12345"
  s3_key        = "writeLambda"
  role          = aws_iam_role.writeRole.arn
  handler       = "writeOperation.handler"
  runtime       = "nodejs12.x"
}


resource "aws_lambda_function" "readLambda" {

  function_name = "readLambda"
  s3_bucket     = "lambdabuck12345"
  s3_key        = "readLambda"
  role          = aws_iam_role.readRole.arn
  handler       = "readOperation.handler"
  runtime       = "nodejs12.x"
}
