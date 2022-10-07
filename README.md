# wsl-ssh-pageant Installer

An installer that creates a scheduled task that runs [wsl-ssh-pageant](https://github.com/benpye/wsl-ssh-pageant/) when you logon.

## Installing, Uninstalling etc

This assumes you are using PowerShell Core, but should work on Powershell Desktop, as well.

The script names as obvious. To install you use `install.ps1` etc. For example:

```pwsh
.\install.ps1
```

The `_prepare.ps1` and `_vars.ps1` are utility scripts, you shouldn't invoke them directly.

After installation the binaries will be at the `bin` folder.

## Contributing

Questions, comments, bug reports, and pull requests are all welcome.  Submit them at
[the project on GitHub](https://github.com/giggio/wsl-ssh-pageant-installer).

Bug reports that include steps-to-reproduce (including code) are the
best. Even better, make them in the form of pull requests.

## Author

[Giovanni Bassi](https://github.com/giggio)

## License

Licensed under the MIT License.
