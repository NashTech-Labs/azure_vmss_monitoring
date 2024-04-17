# variables.tf

# Resource Group variables
variable "resource_group_name" {
  description = "The name of the resource group."
}

variable "location" {
  description = "The location/region where the resource group will be created."
}

# Virtual Network variables
variable "virtual_network_name" {
  description = "The name of the virtual network."
}

variable "address_space" {
  description = "The address space for the virtual network."
}

# Subnet variables
variable "subnet_name" {
  description = "The name of the subnet."
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet."
}

# Virtual Machine Scale Set variables
variable "scale_set_name" {
  description = "The name of the virtual machine scale set."
}

variable "upgrade_mode" {
  description = "The upgrade mode for the scale set."
}

variable "scale_set_sku" {
  description = "The SKU for the virtual machine scale set."
}

variable "scale_set_instances" {
  description = "The number of instances in the virtual machine scale set."
}

variable "admin_username" {
  description = "The admin username for the virtual machines in the scale set."
}

variable "admin_ssh_public_key" {
  description = "The public SSH key for the admin user."
}

# Subnet IP Configuration variables
variable "network_interface_name" {
  description = "The name of the network interface."
}

variable "ip_configuration_name" {
  description = "The name of the IP configuration."
}

variable "public_ip_name" {
  description = "The name of the public IP address."
}

# OS Disk variables
variable "os_disk_caching" {
  description = "The caching type for the OS disk."
}

variable "os_disk_storage_account_type" {
  description = "The storage account type for the OS disk."
}

# Source Image Reference variables
variable "source_image_publisher" {
  description = "The publisher of the source image."
}

variable "source_image_offer" {
  description = "The offer of the source image."
}

variable "source_image_sku" {
  description = "The SKU of the source image."
}

variable "source_image_version" {
  description = "The version of the source image."
}

# Autoscale Setting variables
variable "autoscale_setting_name" {
  description = "The name of the autoscale setting."
}

variable "capacity_default" {
  description = "The default capacity for the autoscale setting."
}

variable "capacity_minimum" {
  description = "The minimum capacity for the autoscale setting."
}

variable "capacity_maximum" {
  description = "The maximum capacity for the autoscale setting."
}

variable "profile_name" {
  description = "The name of the autoscale profile."
}

variable "metric_name" {
  description = "The name of the metric trigger."
}

variable "time_grain" {
  description = "The time grain for the metric trigger."
}

variable "statistic" {
  description = "The statistic for the metric trigger."
}

variable "time_window" {
  description = "The time window for the metric trigger."
}

variable "time_aggregation" {
  description = "The time aggregation for the metric trigger."
}

variable "operator" {
  description = "The operator for the metric trigger."
}

variable "threshold" {
  description = "The threshold for the metric trigger."
}

variable "metric_namespace" {
  description = "The namespace for the metric trigger."
}

variable "dimension_name" {
  description = "The name of the dimension for the metric trigger."
}

variable "dimension_operator" {
  description = "The operator for the dimension for the metric trigger."
}

variable "dimension_values" {
  description = "The values for the dimension for the metric trigger."
}

variable "scale_direction" {
  description = "The direction of the scale action."
}

variable "scale_type" {
  description = "The type of the scale action."
}

variable "scale_value" {
  description = "The value of the scale action."
}

variable "scale_cooldown" {
  description = "The cooldown for the scale action."
}

variable "scale_mode" {
  description = "The mode for predictive scaling."
}

variable "look_ahead_time" {
  description = "The look ahead time for predictive scaling."
}

variable "send_to_subscription_administrator" {
  description = "Whether to send notifications to the subscription administrator."
}

variable "send_to_subscription_co_administrator" {
  description = "Whether to send notifications to the subscription co-administrator."
}

variable "custom_emails" {
  description = "Custom email addresses for notifications."
  type        = list(string)
}
