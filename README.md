# TERRAFORM-PROJECT

This is a sample project to create IAC on GCP. This project uses remote backend to store the state.
The state will be stored in GCS.
This project creates the below resources

1. Topic
2. Adds roles to IAM
3. Creates a storage bucket

# Prerequisites

1. Google Project
2. Terraform v1.0.11

# Running

Run the below steps in the same order.

1. Terraform init : Need to run init command with partial backend config.

```
$ terraform init -backend-config="bucket=google-bucket-name-here"
```

2. Terraform plan : This generates the plan and prints on cli

```
$ terraform plan -var-file = ./vars/<env>/project-id.tf
```

3. Terraform apply : This applies the IAC changes

```
$ terraform apply -auto-approve -var-file = ./vars/<env>/project-id.tf
```

Optionally we can also run terraform validate after init to check the syntax.
