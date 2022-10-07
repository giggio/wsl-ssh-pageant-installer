. "$PSScriptRoot\vars.ps1"
if (!(Test-Path "$PSScriptRoot\bin" -PathType Container)) {
    mkdir $binDir
}
if (!(Test-Path $installer)) {
    Invoke-WebRequest -Uri 'https://github.com/winsw/winsw/releases/download/v3.0.0-alpha.10/WinSW-net461.exe' -OutFile "$installer"
}
if (!(Test-Path $executable)) {
    if ([System.Environment]::Is64BitOperatingSystem) {
        Invoke-WebRequest -Uri 'https://github.com/benpye/wsl-ssh-pageant/releases/download/20201121.2/wsl-ssh-pageant-amd64.exe' -OutFile "$executable"
    } else {
        Invoke-WebRequest -Uri 'https://github.com/benpye/wsl-ssh-pageant/releases/download/20201121.2/wsl-ssh-pageant-386.exe' -OutFile "$executable"
    }
}