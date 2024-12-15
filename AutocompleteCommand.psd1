@{
    ModuleVersion     = "1.0.0"
    GUID              = ""
    Author            = "marcioale1002"
    CompanyName       = "Marcio Alemão"
    Description       = "This module provides autocompletion for commands in PowerShell"
    Copyright         = "(c) 2022 Marcio Alemão. All rights reserved."
    RootModule        = "AutocompleteCommand.psm1"
    FunctionsToExport = @('Register-AutocompleteCommand')
    CmdletsToExport   = @('Register-AutocompleteCommand')
    VariablesToExport = '*'
    AliasesToExport   = @('')
    PrivateData       = @{
        PSData = @{
            Tags = @('autocomplete', 'command', 'psreadline')
        }
    }
}