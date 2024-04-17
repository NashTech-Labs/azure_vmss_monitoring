# example.tfvars

# Resource Group variables
resource_group_name = "autoscalingTest01"
location            = "japan west"

# Virtual Network variables
virtual_network_name    = "acctvn"
address_space           = ["10.0.0.0/16"]

# Subnet variables
subnet_name             = "acctsub"
subnet_address_prefixes = ["10.0.2.0/24"]

# Virtual Machine Scale Set variables
scale_set_name          = "exampleset"
upgrade_mode            = "Manual"
scale_set_sku           = "Standard_D2"
scale_set_instances     = 1
admin_username          = "myadmin"
admin_ssh_public_key    = ""

# Subnet IP Configuration variables
network_interface_name  = "TestNetworkProfile"
ip_configuration_name   = "TestIPConfiguration"
public_ip_name          = "my-ip"

# OS Disk variables
os_disk_caching             = "ReadWrite"
os_disk_storage_account_type = "StandardSSD_LRS"

# Source Image Reference variables
source_image_publisher = "Canonical"
source_image_offer     = "0001-com-ubuntu-server-focal"
source_image_sku       = "20_04-lts"
source_image_version   = "latest"

# Autoscale Setting variables
autoscale_setting_name                      = "myAutoscaleSetting"
capacity_default                            = 1
capacity_minimum                            = 1
capacity_maximum                            = 10
profile_name                                = "defaultProfile"
metric_name                                 = "Percentage CPU"
time_grain                                  = "PT1M"
statistic                                   = "Average"
time_window                                 = "PT5M"
time_aggregation                            = "Average"
operator                                    = "GreaterThan"
threshold                                   = 75
metric_namespace                            = "microsoft.compute/virtualmachinescalesets"
dimension_name                              = "AppName"
dimension_operator                          = "Equals"
dimension_values                            = ["App1"]
scale_direction                             = "Increase"
scale_type                                  = "ChangeCount"
scale_value                                 = "1"
scale_cooldown                              = "PT1M"
scale_mode                                  = "Enabled"
look_ahead_time                             = "PT5M"
send_to_subscription_administrator          = true
send_to_subscription_co_administrator       = true
custom_emails                               = ["aayush07bisht@gmail.com"]
