$vCenterFqdn = "sfo-w01-vc01.sfo.rainpole.io"
$vCenterUser = "administrator@vsphere.local"
$vCenterPass = "**********"

$customizationName = "windows-server-standard"
$customizationDescription = "Windows Server Standard"
$osType = "Windows"
$ownerName = "Rainpole"
$ownerOrganization = "Rainpole"
$adminPassword = "**********"
$timeZone = "004"
$domain = "sfo.rainpole.io"
$domainUser = "svc-domain-join@sfo.rainpole.io"
$domainPass = "**********"

Connect-VIServer -Server $vCenterFqdn -User $vCenterUser -Password $vCenterPass

New-OSCustomizationSpec -Name $customizationName -Description $customizationDescription -OSType $osType -ChangeSid -FullName $ownerName -OrgName $ownerOrganization -NamingScheme vm -AdminPassword $adminPassword -TimeZone $timeZone -Domain $domain -DomainUsername $domainUser -DomainPassword $domainPass 

Get-OSCustomizationSpec -Name $customizationName | Format-List *

Disconnect-VIServer -Server $vCenterFqdn -Confirm:$false