. "$PSScriptRoot\_vars.ps1"
if ($null -eq (Get-ScheduledTask $actionName -ErrorAction SilentlyContinue)) {
    exit 1
}
