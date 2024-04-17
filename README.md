# Azure Virtual Machine Scale Set with Autoscale Configuration

This Terraform configuration creates an Azure Virtual Machine Scale Set (VMSS) along with autoscale settings for automatic scaling based on predefined metrics.

## Prerequisites

Before you begin, ensure you have the following:

- An Azure subscription.
- Terraform installed on your local machine.
- Azure CLI installed and logged in (`az login`).

## Usage

1. Clone this repository to your local machine:

    ```bash
    git clone <repository_url>
    cd <repository_name>
    ```

2. Initialize Terraform:

    ```bash
    terraform init
    ```

3. Review and customize the `variables.tf` file to adjust any default values as needed.

4. Review and customize the `main.tf` file to configure your Azure resources according to your requirements.

5. Run Terraform plan to preview the changes:

    ```bash
    terraform plan
    ```

6. If the plan looks satisfactory, apply the changes:

    ```bash
    terraform apply
    ```

7. Remember to run `terraform destroy` when you no longer require these resources to avoid unnecessary AZURE charges.