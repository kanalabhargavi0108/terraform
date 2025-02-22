data "aws_subnet" "selected" {
  filter {
    name   = "tag:Name"
    values = ["subnet"] # insert value here
  }
}



resource "aws_instance" "dev" {
    ami = "ami-0d682f26195e9ec0f"
    instance_type = "t2.micro"
    subnet_id = data.aws_subnet.selected.id
   
}