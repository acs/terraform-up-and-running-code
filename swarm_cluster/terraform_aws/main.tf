provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "swarm_node" {}