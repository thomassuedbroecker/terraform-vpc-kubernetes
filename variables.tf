variable "flavor" {
  default = "bx2.4x16"
  description = "Default worker node flaver. Use 'ibmcloud ks flavors --zone us-south-1' to verify the availability."
}

variable "worker_count" {
  default = "2"
  description = "Default worker node count is set to 2."
}

variable "kubernetes_pricing" {
  default = "tiered-pricing"
  description = "Kubernetes Cluster pricing."
}

variable "resource_group" {
  default = "default"
  description = "IBM Cloud resource group name."
}

variable "name" {
  default = "operator-sample-kubernetes-cluster"
  description = "The Kubernetes Cluster name."
}

variable "vpc_name" {
  default = "operator-sample"
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