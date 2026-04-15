dism /Export-Image /SourceImageFile:C:\iso\sources\install.wim /SourceIndex:1 /DestinationImageFile:C:\iso\sources\install.esd /Compress:recovery

Remove-Item C:\iso\sources\install.wim

oscdimg -bC:\iso\boot\etfsboot.com -u2 -h -m -lWIN11_23H2_PRO_PTBR_UPDATED C:\iso C:\final.iso
