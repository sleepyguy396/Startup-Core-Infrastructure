# vSphere PowerCLI Script: Pre-Maintenance Snapshot
# Narrative: Run this before patching servers to allow for instant rollback.

Import-Module VMware.PowerCLI
Connect-VIServer -Server "vcenter.startup.local"

$VMs = "Web-Prod-01", "App-Prod-01", "DC-01"
$Date = Get-Date -Format "yyyy-MM-dd"

foreach ($VM in $VMs) {
    Write-Host "Creating Snapshot for $VM..." -ForegroundColor Cyan
    New-Snapshot -VM $VM -Name "Pre-Patching-$Date" -Description "Automated snapshot before monthly updates." -Quiesce
}

Write-Host "[+] All safety snapshots created successfully." -ForegroundColor Green