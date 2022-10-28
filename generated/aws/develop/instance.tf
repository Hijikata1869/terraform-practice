resource "aws_instance" "tfer--i-09e0f9e36c04e6115_" {
  ami                         = "ami-0de5311b2a443fb89"
  associate_public_ip_address = "true"
  availability_zone           = "ap-northeast-1c"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_core_count       = "1"
  cpu_threads_per_core = "1"

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "false"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = "0"
  key_name                             = "terraform-practice"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = "1"
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring = "false"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  private_ip = "172.31.10.32"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  security_groups   = ["terraform-practice-sg"]
  source_dest_check = "true"
  subnet_id         = "subnet-063057e8cf580c211"

  tags = {
    Environment = "dev"
  }

  tags_all = {
    Environment = "dev"
  }

  tenancy                = "default"
  vpc_security_group_ids = [data.terraform_remote_state.local.outputs.aws_security_group_tfer--terraform-practice-sg_sg-07352efc0ddfdbaac_id]
}
