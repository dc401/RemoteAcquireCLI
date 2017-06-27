<#PowerShell acquire memory from Win64 bit hosts
 dchow[AT]xtecsystems.com 20170627

 Best Ran Hidden via:
 powershell.exe -windowstyle hidden -executionpolicy bypass fooscript.ps1


#>

Write-Host "-- DO NOT CLOSE -- IT/INFOSEC MAINTENANCE -- DO NOT CLOSE --"
$hostvar = (hostname.exe)
[string]$baseRemotePath = "\\vpwencaseapke01\encase\test\mem\"
[string]$E01file = "_mem"
[string]$fullRemoteDstPath = $baseRemotePath + $hostvar + $E01file
.\winen64.exe -p "$fullRemoteDstPath" -d 1 -n TaniumAcquisitionAuto -m $hostvar -c 000 -e CIRT -r 000

exit