$vCenterFqdn = "sfo-w01-vc01.sfo.rainpole.io"
$vCenterUser = "administrator@vsphere.local"
$vCenterPass = "**********"

$customizationName = "linux-ubuntu-server-lts"
$customizationDescription = "Linux Ubuntu server LTS"
$osType = "Linux"
$domain = "sfo.rainpole.io"
$timeZone = "America/Los_Angeles"

Connect-VIServer -Server $vCenterFqdn -User $vCenterUser -Password $vCenterPass

New-OSCustomizationSpec -Name $customizationName -Description $customizationDescription -OSType $osType  -NamingScheme vm -Domain $domain  

$CustomizationSpec = Get-View -Id 'CustomizationSpecManager-CustomizationSpecManager'
$item = $CustomizationSpec.GetCustomizationSpec($customizationName)
$item.Spec.Identity.HwClockUTC = $false
$item.Spec.Identity.TimeZone = $timeZone
$CustomizationSpec.OverwriteCustomizationSpec($item)

Get-OSCustomizationSpec -Name $customizationName | Format-List *

Disconnect-VIServer -Server $vCenterFqdn -Confirm:$false