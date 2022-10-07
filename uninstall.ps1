. "$PSScriptRoot\vars.ps1"
$task = Get-ScheduledTask -TaskName $actionName -ErrorAction SilentlyContinue
if ($null -ne $task) {
    . "$PSScriptRoot\stop.ps1"
    Unregister-ScheduledTask -InputObject $task -Confirm:$false
}