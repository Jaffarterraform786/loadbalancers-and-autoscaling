## Creating Launch Configuration
resource "aws_launch_configuration" "example" {
  image_id        = "${lookup(var.amis, var.region)}"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.instance.id}"]
  key_name        = "${var.key_name}"
  user_data       = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 80 &
              EOF
  lifecycle {
    create_before_destroy = true
  }
}
