Get-ChildItem -Path "$PSScriptRoot\Functions" -Filter "*.ps1" | ForEach-Object {
    . $_.FullName
}