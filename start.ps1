if ($null -eq (Get-Service wsl-ssh-pageant -ErrorAction SilentlyContinue)) {
    Write-Error "Service is not installed."
} else {
    . "$PSScriptRoot\prepare.ps1"
    . $installer start .\wsl-ssh-pageant.xml
}