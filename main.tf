provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "example" {
  name                = var.virtual_network_name
  address_space       = var.address_space
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = var.subnet_address_prefixes
}

resource "azurerm_linux_virtual_machine_scale_set" "example" {
  name                = var.scale_set_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  upgrade_mode        = var.upgrade_mode
  sku                 = var.scale_set_sku
  instances           = var.scale_set_instances
  admin_username      = var.admin_username

  admin_ssh_key {
    username   = var.admin_username
    public_key = var.admin_ssh_public_key
  }

  network_interface {
    name    = var.network_interface_name
    primary = true

    ip_configuration {
      name      = var.ip_configuration_name
      primary   = true
      subnet_id = azurerm_subnet.example.id

     public_ip_address {
        name = var.public_ip_name
      }
    }
  }
 
  os_disk {
    caching              = var.os_disk_caching
    storage_account_type = var.os_disk_storage_account_type
  }

  source_image_reference {
    publisher = var.source_image_publisher
    offer     = var.source_image_offer
    sku       = var.source_image_sku
    version   = var.source_image_version
  }
}

resource "azurerm_monitor_autoscale_setting" "example" {
  name                = var.autoscale_setting_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  target_resource_id  = azurerm_linux_virtual_machine_scale_set.example.id

  profile {
    name = var.profile_name

    capacity {
      default = var.capacity_default
      minimum = var.capacity_minimum
      maximum = var.capacity_maximum
    }

    rule {
      metric_trigger {
        metric_name        = var.metric_name
        metric_resource_id = azurerm_linux_virtual_machine_scale_set.example.id
        time_grain         = var.time_grain
        statistic          = var.statistic
        time_window        = var.time_window
        time_aggregation   = var.time_aggregation
        operator           = var.operator
        threshold          = var.threshold
        metric_namespace   = var.metric_namespace
        dimensions {
          name     = var.dimension_name
          operator = var.dimension_operator
          values   = var.dimension_values
        }
      }

      scale_action {
        direction = var.scale_direction
        type      = var.scale_type
        value     = var.scale_value
        cooldown  = var.scale_cooldown
      }
    }

    rule {
      metric_trigger {
        metric_name        = var.metric_name
        metric_resource_id = azurerm_linux_virtual_machine_scale_set.example.id
        time_grain         = var.time_grain
        statistic          = var.statistic
        time_window        = var.time_window
        time_aggregation   = var.time_aggregation
        operator           = var.operator
        threshold          = var.threshold
      }

      scale_action {
        direction = var.scale_direction
        type      = var.scale_type
        value     = var.scale_value
        cooldown  = var.scale_cooldown
      }
    }
  }

  predictive {
    scale_mode      = var.scale_mode
    look_ahead_time = var.look_ahead_time
  }

  notification {
    email {
      send_to_subscription_administrator    = var.send_to_subscription_administrator
      send_to_subscription_co_administrator = var.send_to_subscription_co_administrator
      custom_emails                         = var.custom_emails
    }
  }
}
