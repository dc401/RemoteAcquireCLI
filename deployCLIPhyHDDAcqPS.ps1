<#PowerShell acquire physical device 0 from win hosts
 dchow[AT]xtecsystems.com 20170627

 Best Ran Hidden via:
 powershell.exe -windowstyle hidden -executionpolicy bypass fooscript.ps1


#>
 
Write-Host "-- DO NOT CLOSE -- IT/INFOSEC MAINTENANCE -- DO NOT CLOSE --"
$hostvar = (hostname.exe)
[string]$baseRemotePath = "\\foo\encase\test\physical\"
[string]$E01file = "_phy"
[string]$fullRemoteDstPath = $baseRemotePath + $hostvar + $E01file
.\winacq.exe -dev 0 -p "$fullRemoteDstPath" -d 1 -n foo -m "$hostvar Physical Dev 0" -e CIRT -r 000 -c 000 -v

exit