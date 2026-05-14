$serverName = $env:COMPUTERNAME
$outputPath = "$env:USERPROFILE\Desktop\Server_Health_Report.csv"

$diskInfo = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3" |
Select-Object @{
    Name = 'ServerName'
    Expression = {$serverName}
},
DeviceID,
@{
    Name = 'FreeSpaceGB'
    Expression = {[math]::Round($_.FreeSpace / 1GB, 2)}
},
@{
    Name = 'TotalSpaceGB'
    Expression = {[math]::Round($_.Size / 1GB, 2)}
},
@{
    Name = 'UsedSpacePercent'
    Expression = {
        [math]::Round((($_.Size - $_.FreeSpace) / $_.Size) * 100, 2)
    }
}

$diskInfo | Export-Csv -Path $outputPath -NoTypeInformation

Write-Host "Server health report exported to $outputPath"
