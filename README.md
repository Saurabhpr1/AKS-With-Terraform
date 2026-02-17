# AKS With Terraform

Deploy an **Azure Kubernetes Service (AKS)** cluster on **Microsoft Azure** using **Terraform** (Infrastructure as Code).

This repository contains Terraform code to provision AKS along with supporting Azure resources like **resource group, networking**, and **node pools**.

---

## 📌 Features

* Deploy AKS cluster in Azure
* Modular Terraform code structure
* Easy configuration with variables
* Designed for automation & CI/CD pipelines

---

## 📁 Repository Structure

```
/
├── azurerm-resource/              # Azure Resource Group 
├── azurerm-aks/                   # AKS cluster Terraform module
├── parent_module/                 # Root Terraform configuration
└── README.md
```

---

## 🚀 Prerequisites

Before using this project, make sure you have:

1. **Terraform v1.3+**
2. **Azure CLI**

   ```bash
   az login
   ```
3. **An Azure Subscription**
4. **azurerm Terraform provider configured**

---

## ⚙️ Quick Start

### 1. Clone the repository

```bash
git clone https://github.com/Saurabhpr1/AKS-With-Terraform.git
cd AKS-With-Terraform
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Plan the Deployment

```bash
terraform plan 
```

### 4. Apply the Configuration

```bash
terraform apply 
```

Terraform will now create the AKS cluster and related Azure resources.

---

### 5. Configure `kubectl` for the AKS Cluster

After the cluster is created, set up your `kubectl` context:

```bash
az aks get-credentials \
  --resource-group <YOUR_RG_NAME> \
  --name <YOUR_AKS_NAME>
```

This will configure `kubectl` to communicate with your new AKS cluster.

---

### 6. Verify Cluster Nodes

To confirm the nodes are running and ready:

```bash
kubectl get nodes
```

You should see output similar to:

```
NAME                                STATUS   ROLES   AGE   VERSION
aks-testnode-15715516-vmss000000    Ready    agent   5m    v1.33.6
```

---

## 📦 Variables

| Variable              | Description                                           |
| --------------------- | ----------------------------------------------------- |
| `location`            | Azure region for all resources                        |
| `resource_group_name` | Name of the Azure Resource Group                      |
| `aksmy_clusters`      | Name of the AKS cluster                               |
| `node_count`          | Number of nodes in the default node pool              |
| `vm_size`             | Size of the VM nodes                                  |
| …                     | Add other variables as defined in your Terraform code |

---

## 📤 Outputs

Terraform outputs useful information after apply, for example:

* `aks_cluster_id`
* `kube_config` (optional)
* Node pool IDs
* Networking resource IDs

These outputs can be used for CI/CD pipelines or automation scripts.

---

## 🛠️ Tips & Best Practices

* Keep sensitive variables (`client_id`, `client_secret`) in a `.tfvars` file and **never** commit them.
* Use a Terraform backend (like Azure Storage) to securely store the state file.
* Always run `terraform plan` before `apply` to check changes.

---

## 🙌 Contributing

Contributions and improvements are **welcome**! Open issues or pull requests with clear descriptions and test cases.

---

