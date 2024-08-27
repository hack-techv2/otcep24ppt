# Define the path to the registry key
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System"

# Ensure the registry key exists
if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force
}

# Set the registry value
Set-ItemProperty -Path $registryPath -Name "EnableSmartScreen2" -Value 0 -Type DWord
