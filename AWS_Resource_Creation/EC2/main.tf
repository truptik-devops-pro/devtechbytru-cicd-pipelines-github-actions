Problem statements: 

terraform {

	required_version = "<= 0.11.0"
}

provider "aws" {

	region = ${var.aws_region}

}

resource "aws_instance" "EC2" {

	ami = ${var.ami}
	instance_type = "t2.micro"
	awilability_zone = ${var.az}

}

resource "aws_tags" "tagging" {

	name = ${var.tagname}

}

