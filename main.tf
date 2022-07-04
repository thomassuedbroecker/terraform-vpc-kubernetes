###############################
# Local variables
###############################

locals {
  ZONE1 = "${var.region}-1"
}

###############################
# Virtual Private Cloud
###############################

resource "ibm_is_vpc" "vpc1" {
  name = "vpc-${var.vpc_name}"
}

resource "ibm_is_subnet" "subnet1" {
  name                     = "subnet-operator-sample-1"
  vpc                      = ibm_is_vpc.vpc1.id
  zone                     = local.ZONE1
  total_ipv4_address_count = 256
}

data "ibm_resource_group" "resource_group" {
  name = var.resource_group
}

resource "ibm_resource_instance" "kms_instance1" {
    name              = "operator_sample_kms"
    service           = "kms"
    plan              = var.kubernetes_pricing
    location          = var.region
}
  
resource "ibm_kms_key" "operator-sample" {
    instance_id = "${ibm_resource_instance.kms_instance1.guid}"
    key_name = "operator_sample_root_key"
    standard_key =  false
    force_delete = true
}

###############################
# Kubernetes Cluster
###############################

resource "ibm_container_vpc_cluster" "cluster" {
  name              = "${var.cluster_name}"
  vpc_id            = ibm_is_vpc.vpc1.id
  kube_version      = var.kube_version
  flavor            = var.flavor
  worker_count      = var.worker_count
  resource_group_id = data.ibm_resource_group.resource_group.id

  zones {
    subnet_id = ibm_is_subnet.subnet1.id
    name      = local.ZONE1
  }
}

data "ibm_container_cluster_config" "cluster_config" {
  cluster_name_id = ibm_container_vpc_cluster.cluster.id
}
