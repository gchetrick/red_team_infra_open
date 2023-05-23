resource "aws_key_pair" "grog" {
  key_name   = "grog"
  public_key = file(var.grog-key)
}
