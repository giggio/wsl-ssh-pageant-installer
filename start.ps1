. "$PSScriptRoot\_vars.ps1"
if ($null -eq (Get-ScheduledTask $actionName -ErrorAction SilentlyContinue)) {
    Write-Error "Task is not installed."
} else {
    Start-ScheduledTask -TaskPath $env:USERNAME wsl-ssh-pageant
}
