# ryo-module-template

Template folder structure for a rollyourown.xyz module.

## How to use

Clone this repository as a starting point for a new module and make the following changes:

- In configuration/configuration.yml, add the `module_id` for the module
- Add additional Ansible playbooks, roles and tasks for module-specific host setup in the host-setup directory
- Add Packer templates for each module component in the image-build directory
- Add Ansible playbooks for each component in the image-build/playbooks directory with Ansible roles and tasks for the component in the image-build/playbooks/roles/ directory
- Add Terraform files, cloud-init files and additional Terraform modules if necessary in the module-deployment directory
