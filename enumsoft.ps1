# Creator: Dimitrios Zacharopoulos
# Company: Obipixel Ltd
# Date: 29 Jan 2023

# Enumerate Installed Software and Configurations on Windows 11

# Get a list of all installed software on the system
$software = Get-WmiObject -Class Win32_Product

# Loop through each installed software and output its name and version
foreach ($app in $software) {
    Write-Host "Name: $($app.Name)"
    Write-Host "Version: $($app.Version)"
    Write-Host ""
}

# Get system information and output key details
$system = Get-WmiObject -Class Win32_ComputerSystem
Write-Host "Manufacturer: $($system.Manufacturer)"
Write-Host "Model: $($system.Model)"
Write-Host "OS: $($system.Caption) $($system.OSArchitecture) $($system.Version)"
Write-Host ""

# Get BIOS information and output key details
$bios = Get-WmiObject -Class Win32_BIOS
Write-Host "BIOS Vendor: $($bios.Manufacturer)"
Write-Host "BIOS Version: $($bios.SMBIOSBIOSVersion)"
Write-Host "BIOS Release Date: $($bios.ReleaseDate)"
Write-Host ""