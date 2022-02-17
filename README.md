# ryo-module-template

This is the template repository structure for a [rollyourown.xyz](https://rollyourown.xyz) module.

---

The general architecture of rollyourown.xyz projects and modules is documented [here](https://rollyourown.xyz/collaborate/project_and_module_development/general_architecture/)

The structure of a rollyourown.xyz module (which this template provides) is documented [here](https://rollyourown.xyz/collaborate/project_and_module_development/module_structure/).

## How to Use this Template

Clone this repository as a starting point for a new module and make the following changes:

- If needed, add additional parameters for the module in the [`configuration/configuration.yml`](./configuration/configuration.yml) configuration file, and change the [`module_id`](https://rollyourown.xyz/collaborate/project_and_module_development/module_structure/#the-project_id) for the new module
- Add additional Ansible playbooks, roles and tasks for module-specific host setup in the [`host-setup`](./host-setup/) directory
- Add [Packer](https://www.packer.io/) templates and [Ansible](https://www.ansible.com/) playbooks for each module component in the [`image-build`](./image-build/) directory
- Add [Terraform](https://www.terraform.io/) and [cloud-init](https://cloud-init.io/) files in the [`module-deployment`](./module-deployment/) directory
- Modify the scripts in the [`scripts-module`](./scripts-module/) directory, if necessary
- Update the [`README`](./README.md) for the new module

This template README can be used for the new module by deleting this part, changing the title and introductory text above, and completing the sections below.

---

Deploy <MODULE_PURPOSE> using Ansible, Packer and Terraform.

## Module Summary

This module uses [Ansible](https://www.ansible.com/), [Packer](https://www.packer.io/) and [Terraform](https://www.terraform.io/) to deploy ...,  as a module for other [rollyourown.xyz projects](https://rollyourown.xyz/rollyourown/projects/).

_A short summary of the purpose of the module._

## How to Use

A [rollyourown.xyz](https://rollyourown.xyz/) module contains automation code to configure, build, deploy, maintain, back up and restore a module for use by other rollyourown.xyz projects.

In itself, a module doesn’t provide a full end-to-end service, but rather provides a reusable building block that is used in a full rollyourown.xyz project as part of the end-to-end solution for that project.

A detailed description for project developers of how to use this module in a project can be found in the [module's documentation](https://rollyourown.xyz/rollyourown/project_modules/<MODULE_NAME>/).

## How to Collaborate

We would be delighted if you would like to contribute to [rollyourown.xyz](https://rollyourown.xyz) and there are a number of ways you can collaborate on this module:

- [Raising security-related issues](https://rollyourown.xyz/collaborate/security_vulnerabilities/)
- [Contributing bug reports, feature requests and ideas](https://rollyourown.xyz/collaborate/bug_reports_feature_requests_ideas/)
- [Improving the module](https://rollyourown.xyz/collaborate/existing_projects_and_modules/) - e.g. to provide fixes or enhancements

You may also like to contribute to the wider [rollyourown.xyz](https://rollyourown.xyz/) project by, for example:

- [Contributing a new project or module](https://rollyourown.xyz/collaborate/new_projects_and_modules/)
- [Contributing to the rollyourown.xyz website content](https://rollyourown.xyz/collaborate/website_content/) or [design](https://rollyourown.xyz/collaborate/website_design/)
- [Maintaining a rollyourown.xyz repository](https://rollyourown.xyz/collaborate/working_with_git/what_is_git/#project-maintainer)

Issues for this project can be submitted on [Codeberg](https://codeberg.org/) (_preferred_) or [GitHub](https://github.com/):

- Issues on Codeberg: [here](https://codeberg.org/rollyourown-xyz/<MODULE_NAME>/issues)
- Issues on GitHub: [here](https://github.com/rollyourown-xyz/<MODULE_NAME>/issues)

## Security Vulnerabilities

If you have found a security vulnerability in any [rollyourown.xyz](https://rollyourown.xyz/) service or any of the [rollyourown.xyz](https://rollyourown.xyz/) projects, modules or other repositories, please read our [security disclosure policy](https://rollyourown.xyz/collaborate/security_vulnerabilities/) and report this via our [security vulnerability report form](https://forms.rollyourown.xyz/security-vulnerability).

## Repository Links

For public contributions, we maintain mirror repositories of this project on [Codeberg](https://codeberg.org) and [GitHub](https://github.com):

- [https://codeberg.org/rollyourown-xyz/<MODULE_NAME>](https://codeberg.org/rollyourown-xyz/<MODULE_NAME>)
- [https://github.com/rollyourown-xyz/<MODULE_NAME>](https://github.com/rollyourown-xyz/<MODULE_NAME>)

Our preferred collaboration space is Codeberg:

<a href="https://codeberg.org/rollyourown-xyz/<MODULE_NAME>"><img alt="Get it on Codeberg" src="https://get-it-on.codeberg.org/get-it-on-blue-on-white.png" height="60"></a>

The primary repository for this project is hosted on our own Git repository server at:

- [https://git.rollyourown.xyz/ryo-projects/<MODULE_NAME>](https://git.rollyourown.xyz/ryo-projects/<MODULE_NAME>)

**Repositories on our own Git server are accessible only to members of our organisation**.
