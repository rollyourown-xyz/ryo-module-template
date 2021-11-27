## TERRAFORM FILE EXAMPLES FOR DEPLOYMENT OF MODULE COMPONENTS

# Deployment of <COMPONENT_NAME> using a dynamic IP address and a plain cloud-init file
#######################################################################################

# resource "lxd_container" "<COMPONENT_NAME>" {
#   remote     = var.host_id
#   name       = "<COMPONENT_NAME>"
#   image      = join("-", [ local.module_id, "<COMPONENT_NAME>", var.image_version ])
#   profiles   = ["default"]
  
#   config = { 
#     "security.privileged": "false"
#     "user.user-data" = file("cloud-init/cloud-init-TEMPLATE.yml")
#   }
  
#   # Provide eth0 interface with dynamic IP address
#   device {
#     name = "eth0"
#     type = "nic"

#     properties = {
#       name           = "eth0"
#       network        = var.host_id
#     }
#   }
  
#   # Mount container directory for persistent storage for COMPONENT user data
#   device {
#     name = "<NAME>"
#     type = "disk"
    
#     properties = {
#       source   = join("", [ "/var/containers/", local.module_id, "<SUBDIRECTORY>" ])
#       path     = "<PATH>"
#       readonly = "false"
#       shift    = "true"
#     }
#   }
# }
