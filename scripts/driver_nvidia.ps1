New-Item -ItemType Directory -Path C:\drivers\nvidia -Force

Invoke-WebRequest -Uri "https://us.download.nvidia.com/Windows/342.01/342.01-desktop-win10-64bit-international.exe" -OutFile C:\nvidia.exe

Start-Process -FilePath C:\nvidia.exe -ArgumentList "-s -extract C:\drivers\nvidia" -Wait
