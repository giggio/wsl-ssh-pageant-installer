. "$PSScriptRoot\_vars.ps1"
if ($null -eq (Get-ScheduledTask $actionName -ErrorAction SilentlyContinue)) {
    . "$PSScriptRoot\_prepare.ps1"
    $action = New-ScheduledTaskAction -Execute "$guiExecutable" -Argument '--winssh ssh-pageant --systray' -WorkingDirectory "$PSScriptRoot"
    $trigger = New-ScheduledTaskTrigger -AtLogOn -User $(whoami)
    $settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -Compatibility Win8 -MultipleInstances IgnoreNew -StartWhenAvailable -DontStopIfGoingOnBatteries -ExecutionTimeLimit (New-TimeSpan -Seconds 0)
    $principal = New-ScheduledTaskPrincipal -LogonType Interactive -RunLevel Limited -UserId $(whoami) -ProcessTokenSidType Default
    $task = New-ScheduledTask -Action $action -Trigger $trigger -Description "Starts $actionName on logon." -Settings $settings -Principal $principal
    Register-ScheduledTask -InputObject $task -TaskName $actionName -TaskPath $env:USERNAME -User $(whoami) | Out-Null

    $env:SSH_AUTH_SOCK = '\\.\pipe\ssh-pageant'
    [Environment]::SetEnvironmentVariable('SSH_AUTH_SOCK', '\\.\pipe\ssh-pageant', 'User')
} else {
    Write-Error "Task already installed."
}
