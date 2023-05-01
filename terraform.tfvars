cidr = "10.0.0.0/16"
pub_sub_cidr = "10.0.1.0/24"
pra_sub_cidr = "10.0.2.0/24"
tags = {
    Name = "timing"
    Environment = "DEV"
    terraform = "true"
  }
internet_cidr = "0.0.0.0/0"
internal = "true"
lb = "application" 
subnet_id = ["subnet-0bd7d4d6699d6a8be","subnet-08044b541adce4255"]
security_groups = ["sg-0622eb928f632cd7d"]
time-out = 60