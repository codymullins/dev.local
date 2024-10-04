# Define the path to the hosts file
$hostsFile = "C:\Windows\System32\drivers\etc\hosts"
$mapping = "127.0.0.1 dev.local"

# Read the content of the hosts file
$hostsContent = Get-Content -Path $hostsFile

# Check if the mapping already exists
if ($hostsContent -notcontains $mapping) {
    Write-Output "Adding $mapping to $hostsFile"
    # Append the mapping to the hosts file
    Add-Content -Path $hostsFile -Value $mapping
} else {
    Write-Output "$mapping already exists in $hostsFile"
}