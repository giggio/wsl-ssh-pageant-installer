if ((Get-Service wsl-ssh-pageant -ErrorAction SilentlyContinue).Status -eq 'Running') {
    . "$PSScriptRoot\prepare.ps1"
    . $installer stop .\wsl-ssh-pageant.xml
}