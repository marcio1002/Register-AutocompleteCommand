@{
    ModuleVersion     = "1.0.0"
    GUID              = "0641e5ae-4cc9-4146-b037-484bce08d6f4"
    Author            = "marcio1002"
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