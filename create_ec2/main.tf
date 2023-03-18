resource "aws_instance" "tf_ec2_instance" {
    ami = var.ami_id
    instance_type = var.ec2_type
    key_name = var.ec2_pem
    vpc_security_group_ids = [var.ec2_sg_id]
    tags = {
        Name = "tfm01"
    }
} 
