# Use Terraform to create a VPC and a Kubernetes Cluster on IBM Cloud

This is an example to create a Kubernetes Cluster on IBM Cloud in a VPC.

The example is based on following resources:

* [IBM Cloud VPC Gen 2 cluster example](https://github.com/IBM-Cloud/terraform-provider-ibm/tree/master/examples/ibm-cluster/vpc-gen2-cluster)
* [Terraform Registry](https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs/resources/container_vpc_cluster)


| Name | Description | Type | Default Value |
| --- | --- | --- | --- |
| flavor | Default worker node flaver. Use 'ibmcloud ks flavors --zone us-south-1' to verify the availability. | String | bx2.4x16 |
| worker_count | Default worker node count is set to 2. | Integer | 2 |
| resource_group | IBM Cloud resource group name. | String | default |
| name | The Kubernetes Cluster name. | String | operator-sample-kubernetes-cluster |
| vpc_name | The Virtual Private Cloud name. | String | vpc-operator-sample |
| region | IBM Cloud region for the Kubernetes Cluster and the VPC | String | us-south |
| kube_version | The tested Kubernetes Cluster version for the example is 1.23.8. | String | 1.23.8 |
| cluster_name | Kubernetes Cluster Name running in VPC Gen2. | String | operator-sample-ks-cluster |
| worker_pool_name | The worker pool for the Kubernetes cluster. | String | operator-sample-ks-vpc2-worker-pool |
