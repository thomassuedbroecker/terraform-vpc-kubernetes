# Use Terraform to create a VPC and a Kubernetes Cluster on IBM Cloud

This is an example to create a Kubernetes Cluster on IBM Cloud in a VPC.

The example is based on following resources:

* [IBM Cloud VPC Gen 2 cluster example](https://github.com/IBM-Cloud/terraform-provider-ibm/tree/master/examples/ibm-cluster/vpc-gen2-cluster)
* [Terraform Registry](https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs/resources/container_vpc_cluster)


### Terraform variables

| Name | Description | Type | Default Value |
| --- | --- | --- | --- |
| flavor | Default worker node flaver. Use 'ibmcloud ks flavors --zone us-south-1' to verify the availability. | String | bx2.4x16 |
| worker_count | Default worker node count is set to 2. | Integer | 2 |
| resource_group | IBM Cloud resource group name. | String | default |
| vpc_name | The Virtual Private Cloud name. | String |operator-sample |
| region | IBM Cloud region for the Kubernetes Cluster and the VPC | String | us-south |
| kube_version | The tested Kubernetes Cluster version for the example is 1.23.8. | String | 1.23.8 |
| cluster_name | Kubernetes Cluster Name running in VPC Gen2. | String | operator-sample-ks-cluster |
| kubernetes_pricing | Kubernetes Cluster pricing. | String | tiered-pricing |

### Prerequisites

To use an example bash automation following tools need to be installed on the local computer  

* IBM Cloud CLI
* Plugin VPC infrastructure
* Plugin Container-service
* Terraform 

### Example setup

There are the step to use terraform locally with a bash automation, but you can also use Schematics on IBM Cloud for the setup. Here is a blog post which does cover an example usage of Schematics [link](https://suedbroecker.net/2022/01/26/instantiation-of-a-red-hat-openshift-cluster-in-a-multizone-vpc-ibm-cloud-environment-using-the-free-ibm-cloud-schematics-terraform-as-a-service/).

### Step 1: Clone the repo

```sh
git clone https://github.com/thomassuedbroecker/terraform-vpc-kubernetes.git
cd terraform-vpc-kubernetes
```

### Step 2: Verify the configuation of the `variables.tf` file

```sh
nano variables.tf
```

### Step 3: Create a `variables.env` file

```sh
cat variables_template.env > variables.env
```

### Step 4: Add an IBM Cloud access key to your local `variables.env` file

```sh
nano variables.env
```

Content of the file:

```sh
export IC_API_KEY=YOUR_IBM_CLOUD_ACCESS_KEY
export TF_LOG=debug
export REGION="us-south"
export GROUP="default"
```

### Step 5: Execute the bash automation

>The creation can take up to 2 hours!

```sh
create_vpc_kubernetes_cluster_with_terraform.sh
```