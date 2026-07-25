Write-Host "========================="
Write-Host "WINDOWS SERVICES REPORT"
Write-Host "========================="
Write-Host ""

$services = Get-Service
$run = $services | Where-Object Status -eq "Running" | Sort-Object DisplayName
$stop = $services | Where-Object Status -eq "Stopped" | Sort-Object DisplayName

Write-Host "Running Services: " $run.Count
Write-Host "Stopped Services: " $stop.Count

Write-Host ""

Write-Host "Stopped Services ($($stop.Count)) "
Write-Host "---------------------------------------"
$stop.DisplayName

Write-Host ""
Write-Host ""

Write-Host "Running Services ($($run.Count))"
Write-Host "---------------------------------------"
$run.DisplayName