resource "aws_security_group" "sg-eks_cluster" {
  vpc_id = aws_vpc.vpc.id

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}
