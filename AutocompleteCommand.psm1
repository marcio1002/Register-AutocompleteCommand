function Register-AutocompleteCommand {
    param(
        [string[]] $Commands
    )

    Register-ArgumentCompleter -Native -CommandName $Commands -ScriptBlock {
        param(
            $wordToComplete,
            $commandAst,
            $cursorPosition
        )

        [string]$commandName = $commandAst.CommandElements[0].Value
        [string[]]$helpOptions = @('--help', 'help', '-h', '--h', '-?', '/help', '/h')
        $options = @()

        if ( -not(Get-Command -Name $commandName -ErrorAction SilentlyContinue)) {
            return
        }

        foreach ($help in $helpOptions) {
            $helpOutput = & "$commandName" $help 2>&1

            if($helpOutput) { break }
        }

        foreach ($line in $helpOutput) {
            if (
                ($line -match "^\s*([a-zA-Z0-9\-]{2,})\s+(.*)" -and $line -notmatch "$commandName+" -and $line -notmatch '^\s*(.+):') -or 
                $line -match '(\-\-[a-zA-Z0-9\-]+)\s+(.*)' -or 
                $line -match '(\-[a-zA-Z])\s+(.*)' -or
                $line -match '([a-z-A-Z0-9]),(?=[a-z-A-Z0-9])\s+(.*)'
            ) {
                $options += [PSCustomObject]@{
                    Name = $Matches[1];
                    Description = $Matches[2];
                }
            }
        }

        $options = $options | Sort-Object {
            if($_.Name -notmatch '^\-{1,2}') {0}
            elseif ($_.Name -match '^--') {1}
            else {2}
        }, Name

        $options | Where-Object { $_ -like "$wordToComplete*" } | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_.Name, $_.Name, 'ParameterValue', "$($_.Name) - $($_.Description)")
        }
    }
}

Register-AutocompleteCommand -Commands 'choco','git','netstat','docker','docker-compose','nvm','npm','yarn','code'
