New-Item -ItemType Directory -Path C:\iso -Force
Invoke-WebRequest -Uri "https://software-download.microsoft.com/Win11_23H2_BrazilianPortuguese_x64.iso" -OutFile C:\win.iso
Mount-DiskImage -ImagePath C:\win.iso
Start-Sleep -Seconds 10
robocopy D:\ C:\iso /E
