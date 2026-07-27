Write-Host "========================="
Write-Host "TOP PROCESSES REPORT"
Write-Host "========================="

Write-Host ""

Write-Host "Top 10 Processes by Memory Usage"

Write-Host ""

$process = Get-Process | Sort-Object -Descending WS | Select-Object -First 10

$process | ForEach-Object {
    Write-Host $_.ProcessName "               " $([math]::Round($_.WS / 1MB)) "MB"
} 
