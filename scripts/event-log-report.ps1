Write-Host "==========================="
Write-Host "WINDOWS EVENT LOG REPORT"
Write-Host "==========================="
Write-Host ""

$events = Get-WinEvent -Logname System -MaxEvents 10 | Where-Object {$_.LevelDisplayName -eq "Warning" -or $_.LevelDisplayName -eq "Error"}

$events | ForEach-Object {
    Write-Host "Time: " $_.TimeCreated
    Write-Host "Level: " $_.LevelDisplayName
    Write-Host "Source: " $_.ProviderName
    Write-Host "Log: " $_.LogName
    Write-Host ""
    Write-Host "Message: " $_.Message
    Write-Host "---------------------------------------------------"
    Write-Host ""
}
