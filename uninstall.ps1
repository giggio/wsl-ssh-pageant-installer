. "$PSScriptRoot\vars.ps1"
if ($null -ne (Get-Service wsl-ssh-pageant -ErrorAction SilentlyContinue)) {
    . "$PSScriptRoot\stop.ps1"
    . $installer uninstall .\wsl-ssh-pageant.xml
}