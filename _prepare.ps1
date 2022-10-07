. "$PSScriptRoot\_vars.ps1"
if (!(Test-Path "$PSScriptRoot\bin" -PathType Container)) {
    mkdir $binDir
}
if (!(Test-Path $guiExecutable)) {
    if ([System.Environment]::Is64BitOperatingSystem) {
        Invoke-WebRequest -Uri 'https://github.com/benpye/wsl-ssh-pageant/releases/download/20201121.2/wsl-ssh-pageant-amd64.exe' -OutFile "$cliExecutable"
        Invoke-WebRequest -Uri 'https://github.com/benpye/wsl-ssh-pageant/releases/download/20201121.2/wsl-ssh-pageant-amd64-gui.exe' -OutFile "$guiExecutable"
    } else {
        Invoke-WebRequest -Uri 'https://github.com/benpye/wsl-ssh-pageant/releases/download/20201121.2/wsl-ssh-pageant-386.exe' -OutFile "$cliExecutable"
        Invoke-WebRequest -Uri 'https://github.com/benpye/wsl-ssh-pageant/releases/download/20201121.2/wsl-ssh-pageant-386-gui.exe' -OutFile "$guiExecutable"
    }
}
