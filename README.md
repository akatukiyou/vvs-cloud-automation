![Rainpole](icon.png)

# VMware Validated Solutions

This repository provides infrastructure-as-code examples for the **Private Cloud Automation for VMware Cloud Foundation** solution. Learn more about this solution at [vmware.com/go/vvs](https://vmware.com/go/vvs).

## Terraform

Portions of the implementation have supporting Terraform examples. Each Terraform example from the solution is included in this repository. If you want to use the Terraform procedures:
* Verify that your system has Terraform 1.0.0 or later installed. Learn more at [terraform.io](https://terraform.io).
* Verify the your system has a code editor installed. Microsoft Visual Studio Code is recommended. Learn more at [Visual Studio Code](https://code.visualstudio.com/).
* Install the Terraform Visual Studio Code extension 2.12.0 or later by HashiCorp for syntax highlighting and other editing features for Terraform files. Learn more at [Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform).

The following Terraform Providers are used: 
* [VMware vSphere Provider](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs) 2.0.0 or later by HashiCorp 
* [VMware NSX-T Data Center Provider](https://registry.terraform.io/providers/vmware/nsxt/latest) 3.2.1 or later by VMware 
* [VMware vRealize Automation Provider](https://registry.terraform.io/providers/vmware/vra/latest) 0.3.8 or later by VMware

## Packer

A portion of the implementation refers to the use of Packer to create machine images. This repository provides an example to automate the creation of a virtual machine image and its Ubuntu Server guest operating systems on VMware vSphere using HashiCorp Packer and the Packer Plugin for VMware vSphere (`vsphere-iso`). 

Please visit the [github.com/rainpole/packer-vsphere](https://github.com/rainpole/packer-vsphere) for a list of examples to create machine images with various guest operating systems Packer. The resulting machine image artifacts are, by default, converted to a virtual machine template and then transferred to a vSphere Content Library as an OVF template. If an item of the same name exists in the target content library, Packer will update the existing item with the new OVF template. This method is extremely useful for vRealize Automation as image mappings do not need to be updated when a virtual machine image update is executed and finalized.

## Powershell/PowerCLI

Portions of the implementation have supporting PowerShell/PowerCLI examples. 

If you want to use the included Microsoft PowerShell scripts to perform implementation and configuration procedures, you must first install the PowerValidatedSolutions PowerShell module from the PowerShell Gallery. 

* Verify that your system has [Microsoft PowerShell 5.1](https://docs.microsoft.com/en-us/powershell/) or higher installed. 
* Verify that your system has [VMware PowerCLI 12.3.0](https://code.vmware.com/web/tool/12.3.0/vmware-powercli) or higher installed.
* Install the PowerValidatedSolutions PowerShell module together with the supporting modules from the PowerShell Gallery by running the following commands. 
    ```
    Install-Module -Name VMware.PowerCLI -MinimumVersion 12.3.0
    Install-Module -Name VMware.vSphere.SsoAdmin -MinimumVersion 1.3.1
    Install-Module -Name PowerVCF -MinimumVersion 2.1.2
    Install-Module -Name PowerValidatedSolutions -MinimumVersion 1.0.0
    ```
* Import the PowerValidatedSolutions and the PowerCLI PowerShell modules by running the following commands.
    ```
    Import-Module -Name VMware.PowerCLI -MinimumVersion 12.3.0
    Import-Module -Name PowerValidatedSolutions -MinimumVersion 1.0.0
    ```