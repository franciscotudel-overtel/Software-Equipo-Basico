TITLE -- SUPER-SCRIPT --
COLOR 1F

:: -- Cuenta de usuario --
::net user blabla password /ADD
net user user root

:: -- Plan de energía --
powercfg.exe /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

:: -- Chocolatey con todos los programas necesarios --
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install 7zip -y
choco install libreoffice-fresh -y
choco install googlechrome -y
choco install firefox -y
choco install adobereader -y
choco install malwarebytes -y
choco install pdfcreator -y
