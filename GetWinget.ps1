#Install a script from PSGallery
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force
Install-PackageProvider -Name "NuGet" -Force
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-Module -Name "PowerShellGet" -Force
Install-Script -Name "winget-install" -Force
winget-install.ps1

#Uninstall the script, we no longer need it
Uninstall-Script -Name "winget-install"