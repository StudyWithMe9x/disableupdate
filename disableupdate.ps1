$Path = $env:TEMP; $Installer = "disableupdate.zip"; $ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest "https://github.com/tsgrgo/windows-update-disabler/archive/refs/heads/main.zip" -OutFile $Path\$Installer;
Expand-Archive "$Path\disableupdate.zip" -DestinationPath "$Path\disableupdate\windows-update-disabler-main"
start $Path\disableupdate
exit
