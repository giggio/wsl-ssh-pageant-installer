. "$PSScriptRoot\vars.ps1"
if ((Get-ScheduledTask wsl-ssh-pageant -ErrorAction SilentlyContinue).State -eq 'Running') {
    Stop-ScheduledTask -TaskPath $env:USERNAME wsl-ssh-pageant
}