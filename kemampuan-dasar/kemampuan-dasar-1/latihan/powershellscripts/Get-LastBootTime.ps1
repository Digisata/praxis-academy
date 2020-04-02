<#
    This program is for check the last time ypur pc started up
    looking for the reference ? check this link out => https://www.howtogeek.com/141495/geek-school-writing-your-first-full-powershell-script/ <=
    enjoy your caffeine
#>

param(
    [Parameter(Mandatory=$true)][String]$ComputerName
)
Get-WmiObject -Class Win32_OperatingSystem –ComputerName localhost |

Select-Object -Property CSName,@{n="Last Booted";
e={[Management.ManagementDateTimeConverter]::ToDateTime($_.LastBootUpTime)}}