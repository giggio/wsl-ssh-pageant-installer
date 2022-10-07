if ($null -eq (Get-Service wsl-ssh-pageant -ErrorAction SilentlyContinue)) {
    . "$PSScriptRoot\prepare.ps1"
    $cred = Get-Credential -UserName $(whoami) -Message 'Enter Password'
    . $installer install .\wsl-ssh-pageant.xml --username $cred.UserName --password $(ConvertFrom-SecureString $cred.Password -AsPlainText)
} else {
    Write-Error "Service already installed."
}