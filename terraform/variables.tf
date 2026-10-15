variable "aws_region" {
  description = "AWS region for the DevOps platform"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name of the DevOps project"
  type        = string
  default     = "devops-eks-platform"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR range for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}


variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "devops-eks-cluster"
}

variable "eks_cluster_role_arn" {
  description = "IAM role ARN for the EKS control plane"
  type        = string
  default     = "arn:aws:iam::594729247345:role/DevOpsEKSClusterRole"
}

variable "eks_node_role_arn" {
  description = "IAM role ARN for EKS worker nodes"
  type        = string
  default     = "arn:aws:iam::594729247345:role/DevOpsEKSNodeRole"
}

variable "eks_endpoint_public_access_cidrs" {
  description = "Public IP addresses allowed to access the Kubernetes API"
  type        = list(string)
}
