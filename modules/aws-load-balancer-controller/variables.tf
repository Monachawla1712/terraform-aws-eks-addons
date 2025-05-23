variable "helm_config" {
  description = "Helm provider config for the aws_load_balancer_controller."
  type        = any
  default     = {}
}

variable "manage_via_gitops" {
  description = "Determines if the add-on should be managed via GitOps."
  type        = bool
  default     = false
}

variable "addon_context" {
  description = "Input configuration for the addon."
  type = object({
    aws_caller_identity_account_id = string
    aws_caller_identity_arn        = string
    aws_eks_cluster_endpoint       = string
    aws_partition_id               = string
    aws_region_name                = string
    eks_cluster_id                 = string
    eks_oidc_issuer_url            = string
    eks_oidc_provider_arn          = string
    tags                           = map(string)
    irsa_iam_role_path             = string
    irsa_iam_permissions_boundary  = string
    default_repository             = string
  })
}

variable "load_balancer_controller_name" {
  description = "Enter load balancer name"
  type        = string
  default     = "aws-load-balancer-controller"
}

variable "namespace" {
  description = "Enter namespace to install the controller"
  type        = string
  default     = "kube-system"
}

variable "addon_version" {
  description = "Kubernetes Dashboard Version"
  type        = string
  default     = ""
}
