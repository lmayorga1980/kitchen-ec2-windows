resource "aws_instance" "web" {
    # Only AMI, no name mentioned
    # amiFilter=[{"Name":"owner-id","Values":["602401143452"]},{"Name":"name","Values":["amazon-eks-node-1.20-*"]}]
    # currentImageName=amazon-eks-node-1.20-v20230105
    ami = "ami-0ab1687f626a22bf5"
    count = 2
    source_dest_check = false
    connection {
        user = "root"
    }
}
