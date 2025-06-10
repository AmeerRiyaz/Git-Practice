# windows-prereq.ps1
# Run as Administrator

# Install Chocolatey if not already installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install basic packages
choco install -y git vscode nodejs python docker-desktop windows-terminal

# Add Docker to PATH if needed
[Environment]::SetEnvironmentVariable("PATH", $env:PATH + ";C:\Program Files\Docker\Docker\resources\bin", [EnvironmentVariableTarget]::Machine)

# Enable WSL integration with Docker Desktop
& "$Env:ProgramFiles\Docker\Docker\DockerCli.exe" -SwitchLinuxEngine

Write-Output "✅ Windows host prerequisites installed!"
