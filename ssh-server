# take one of the released versions of open-ssh for windows
# from: https://github.com/PowerShell/Win32-OpenSSH/releases
#
# extract it and navigate to open-ssh directory

# register sshd as service
powershell.exe -ExecutionPolicy Bypass -File install-sshd.ps1

# add firewall rule
New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH SSH Server' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22

# set service to start automatically
Set-Service -Name sshd -StartupType "Automatic"

# start the service
Start-Service -Name sshd

