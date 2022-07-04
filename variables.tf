variable "flavor" {
  default = "bx2.4x16"
  description = "Default worker node flaver. Use 'ibmcloud ks flavors --zone us-south-1' to verify the availability."
}

variable "worker_count" {
  default = "2"
  description = "Default worker node count is set to 2."
}

#variable "zone" {
#  default = "us-south-1"
#  description = "Used availability zone on IBM Cloud."
#}

variable "resource_group" {
  default = "default"
  description = "IBM Cloud resource group name."
}

variable "name" {
  default = "operator-sample-kubernetes-cluster"
  description = "The Kubernetes Cluster name."
}

variable "vpc_name" {
  default = "vpc-operator-sample"
  description = "The Virtual Private Cloud name."
}

variable "region" {
  default = "us-south"
  description = "IBM Cloud region for the Kubernetes Cluster and the VPC"
}

variable "kube_version" {
  default = "1.23.8"
  description = "The tested Kubernetes Cluster version for the example is 1.23.8."
}

variable "cluster_name" {
  default = "operator-sample-ks-cluster"
  description = "Kubernetes Cluster Name running in VPC Gen2."
}

variable "worker_pool_name" {
  default = "operator-sample-ks-vpc2-worker-pool"
  description = "The worker pool for the Kubernetes cluster."
}