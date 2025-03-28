variable "helm_config" {
  description = "AWS Node Termination Handler Helm Chart Configuration"
  type        = any
  default     = {}
}

variable "autoscaling_group_names" {
  description = "EKS Node Group ASG names"
  type        = list(string)
}

variable "addon_context" {
  description = "Input configuration for the addon"
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
  })
}

variable "irsa_policies" {
  description = "Additional IAM policies for a IAM role for service accounts"
  type        = list(string)
  default     = []
}

variable "enable_service_monitor" {
  description = "Enable Service monitor for Kubernetes Services"
  type        = bool
  default     = false
}

variable "enable_notifications" {
  description = "Enable creating event rules and SQS queues to send notifications to all SQS subscribers once an event is triggered."
  default     = true
  type        = bool
}

variable "chart_version" {
  description = "AWS Node Termination Handler helm chart version"
  type        = string
  default     = "0.21.0"
}
