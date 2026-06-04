resource "aws_s3_bucket" "insecure" {
  bucket = "ff-test-insecure-bucket"
}

resource "aws_security_group" "open" {
  name = "open-sg"
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
