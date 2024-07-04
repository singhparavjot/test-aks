FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Install necessary packages
RUN powershell -Command Add-WindowsFeature RDS-RD-Server

# Enable RDP
RUN powershell -Command Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 0

# Open the RDP port
EXPOSE 3389

# Start RDP
CMD ["powershell", "Start-Service -Name TermService; while ($true) { Start-Sleep -Seconds 3600 }"]
