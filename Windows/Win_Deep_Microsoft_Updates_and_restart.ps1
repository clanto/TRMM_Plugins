mkdir C:\RMM
mkdir C:\RMM\aggiornamenti
Install-PackageProvider NuGet -Force
Install-Module -Name PSWindowsUpdate -Force
Import-Module PSWindowsUpdate
Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d -AddServiceFlag 7 -confirm:$false
Get-WindowsUpdate -MicrosoftUpdate
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -IgnoreReboot -Verbose >> C:\RMM\aggiornamenti\log.log
$NomeFile = $(get-date -f "yyyy_MM_dd_HH_mm_ss")
Rename-Item C:\RMM\aggiornamenti\log.log C:\RMM\aggiornamenti\$NomeFile.log
shutdown /r /t 0mkdir C:\RMM
mkdir C:\RMM\aggiornamenti
Install-PackageProvider NuGet -Force
Install-Module -Name PSWindowsUpdate -Force
Import-Module PSWindowsUpdate
Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d -AddServiceFlag 7 -confirm:$false
Get-WindowsUpdate -MicrosoftUpdate
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -IgnoreReboot -Verbose >> C:\RMM\aggiornamenti\log.log
$NomeFile = $(get-date -f "yyyy_MM_dd_HH_mm_ss")
Rename-Item C:\RMM\aggiornamenti\log.log C:\RMM\aggiornamenti\$NomeFile.log
shutdown /r /t 0
