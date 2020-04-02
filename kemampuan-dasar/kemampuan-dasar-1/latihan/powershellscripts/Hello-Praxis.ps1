Write-Output 'Custom PowerShell profile is under control dude!'
Add-Content -Path 'C:\Users\hp\Downloads\praxis-academy\kemampuan-dasar-1\latihan\powershellscripts\Hello-Praxis.ps1' -Value "[ZoneTransfer]`nZoneId=3" -Stream 'Zone.Identifier'
Clear-Content -Path 'C:\Users\hp\Downloads\praxis-academy\kemampuan-dasar-1\latihan\powershellscripts\Hello-Praxis.ps1' -Stream 'Zone.Identifier'
if(([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {	
	Write-Output 'Running as Administrator!'
} else {
	Write-Output 'Running Limited!'
}
Pause