# enumsoft
Enumerate installed software and system configurations on a Windows 11 system and ideal for OSINT.

## How this script works?

- This PowerShell script is used to enumerate installed software and system configurations on a Windows 11 system.
- It uses the built-in PowerShell cmdlets Get-WmiObject and the Win32_* classes to retrieve information about the system and installed software.
- The script starts by calling Get-WmiObject with the Win32_Product class to retrieve a list of all installed software on the system.
- It then loops through each installed software and outputs its name and version to the console.
- Next, the script calls Get-WmiObject with the Win32_ComputerSystem class to retrieve information about the system, such as the manufacturer, model, operating system, and version.
- It outputs these details to the console.
- Finally, the script calls Get-WmiObject with the Win32_BIOS class to retrieve information about the BIOS, such as the vendor, version, and release date.
- It outputs these details to the console.

## Why use this script?

This script can be useful for system administrators or IT professionals who need to quickly and easily gather information about the installed software and configurations on a Windows 11 system. It can also be used as part of a larger script or tool to perform more complex tasks, such as auditing or monitoring system configurations.

## Preparation

To use this script, you need to have PowerShell installed on your Windows 11 system. PowerShell is included by default in Windows 11, so you should not need to install anything extra. You can run the script by opening PowerShell and navigating to the directory where the script is located. Then, simply type the name of the script (including the .ps1 file extension) and press Enter. The script will then execute and display the list of installed software and system configurations on the console.

## Usage
```powershell
PS C:\> .\enumSoft.ps1
```

## Example script
```powershell
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
```

## Disclaimer
"The scripts in this repository are intended for authorized security testing and/or educational purposes only. Unauthorized access to computer systems or networks is illegal. These scripts are provided "AS IS," without warranty of any kind. The authors of these scripts shall not be held liable for any damages arising from the use of this code. Use of these scripts for any malicious or illegal activities is strictly prohibited. The authors of these scripts assume no liability for any misuse of these scripts by third parties. By using these scripts, you agree to these terms and conditions."

## License Information

This library is released under the [Creative Commons ShareAlike 4.0 International license](https://creativecommons.org/licenses/by-sa/4.0/). You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to use our code, you email us with a link to the product being created and/or sold. We want bragging rights that we helped (in a very small part) to create your 9th world wonder. We would like the opportunity to feature your work on our homepage.
