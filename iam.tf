resource "aws_iam_role_policy" "write_policy" {
  name = "lambda_write_policy"
  role = aws_iam_role.writeRole.id

  policy = file("./writeRole/write_policy.json")
}


resource "aws_iam_role_policy" "read_policy" {
  name = "lambda_read_policy"
  role = aws_iam_role.readRole.id

  policy = file("./readRole/read_policy.json")
}


resource "aws_iam_role" "writeRole" {
  name = "myWriteRole"

  assume_role_policy = file("./writeRole/assume_write_role_policy.json")

}


resource "aws_iam_role" "readRole" {
  name = "myReadRole"

  assume_role_policy = file("./readRole/assume_read_role_policy.json")

}
