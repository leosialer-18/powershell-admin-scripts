Write-Host "======================="
Write-Host "SYSTEM INVENTORY REPORT"
Write-Host "======================="
Write-Host " "
Write-Host "Report Date: "  $(Get-Date)
Write-Host ""

$info = Get-ComputerInfo
$cpu = Get-CimInstance Win32_Processor
$gpu = Get-CimInstance Win32_VideoController
$disk = Get-CimInstance Win32_DiskDrive
$net = Get-CimInstance Win32_NetworkAdapter

Write-Host "PC Name: " $($info.CsName)
Write-Host "User Name: " $($info.CsUserName)
Write-Host "Windows: " $($info.OsName)
Write-Host "RAM Memory: " $([math]::Round($info.CsTotalPhysicalMemory / 1GB)) "GB"
Write-Host "CPU: " $($cpu.Name)
Write-Host "GPU: " $($gpu.Name)

Write-Host ""
Write-Host "Disks: " $disk.Count
Write-Host "---------------"
$disk | ForEach-Object { Write-Host $_.Caption "    " $([math]::Round($_.Size / 1GB)) "GB"}

Write-Host ""
Write-Host "Network: " $($net | Where-Object { $_.NetEnabled -eq $true } | Select-Object -ExpandProperty Name)