Write-Host "========================="
Write-Host "DISK USAGE REPORT"
Write-Host "========================="

Write-Host ""

$disk = Get-CimInstance Win32_LogicalDisk

$disk | ForEach-Object {

$total = $([math]::Round($_.Size / 1GB))
$free = $([math]::Round($_.FreeSpace / 1GB))
$used = $total - $free
$used_percent = $([math]::Round($used / $total * 100))

Write-Host "Drive: " $_.DeviceID
Write-Host "Label: " $_.VolumeName

Write-Host ""

Write-Host "Total Space: " $total "GB"
Write-Host "Free Space: " $free "GB"
Write-Host "Used Space: " $used "GB"
Write-Host "Usage: " $used_percent "%"

Write-Host ""

Write-Host "------------------------------"

Write-Host ""
}