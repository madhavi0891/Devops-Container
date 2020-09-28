resource "local_file" "inventory" {
    filename = "./host.ini"
    content     = <<-EOF
    [kube-master]
    ${module.ec2.public_ip[0]}
    [etcd]
    ${module.ec2.public_ip[0]}
    [kube-node]
    ${module.ec2.public_ip[1]}
    [kube-node]
    ${module.ec2.public_ip[2]}
    EOF
}
