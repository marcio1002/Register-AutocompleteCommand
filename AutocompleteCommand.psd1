@{
    ModuleVersion = '1.0.0'
    ModuleName = 'AutocompleteCommand'
    Author = 'Marcio Alemão'
    CompanyName = 'Marcio Alemão'
    Description = 'This module provides autocompletion for commands in PowerShell'
    RootModule = 'AutocompleteCommand.psm1'
    PowerShellVersion = '5.1'
    Tags = @('PowerShell', 'Autocomplete', 'Command', 'CommandCompletion', 'Helper')
    FunctionsToExport = @('Register-AutocompleteCommand')
}