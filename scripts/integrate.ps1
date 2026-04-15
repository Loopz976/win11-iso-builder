New-Item -ItemType Directory -Path C:\mount -Force

dism /Export-Image /SourceImageFile:C:\iso\sources\install.wim /SourceIndex:4 /DestinationImageFile:C:\iso\sources\install.wim

dism /Mount-Wim /WimFile:C:\iso\sources\install.wim /index:1 /MountDir:C:\mount

dism /Image:C:\mount /Add-Package /PackagePath:C:\updates

try {
    dism /Image:C:\mount /Add-Driver /Driver:C:\drivers\nvidia\Display.Driver /Recurse
} catch {
    Write-Output "Driver ignorado"
}

dism /Image:C:\mount /Cleanup-Image /StartComponentCleanup /ResetBase

dism /Unmount-Wim /MountDir:C:\mount /Commit
