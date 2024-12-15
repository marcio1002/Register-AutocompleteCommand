# Register-AutocompleteCommand

`Register-AutocompleteCommand` is a PowerShell module designed to simplify and enhance the user experience by enabling auto-completion of command options. It dynamically parses available options and arguments from command-line tools, improving efficiency and usability for PowerShell users.

## Requirements

- **PowerShell Version**: Compatible with PowerShell 5.1 and later.
- **Platform**: Works on Windows, macOS, and Linux environments where PowerShell Core or Windows PowerShell is available.

## Installation

You can install the module directly from the PowerShell Gallery:

```powershell
Install-Module -Name Register-AutocompleteCommand -Scope CurrentUser -Force
```

Alternatively, download the script and import it manually:

```powershell
Import-Module ./Register-AutocompleteCommand.psm1
```

## Usage

The module provides a single primary function: `Register-AutocompleteCommand`. This function enables autocompletion for specified commands.

### Syntax

```powershell
Register-AutocompleteCommand -Commands <string[]>
```

### Parameters

- **`-Commands`** (Required): A string array of command names for which autocompletion should be registered. These commands must exist in your system's PATH.

### Examples

#### Enable Autocompletion for Single Command

To enable autocompletion for the `git` command:

```powershell
Register-AutocompleteCommand -Commands 'git'
```

#### Enable Autocompletion for Multiple Commands

You can specify multiple commands for autocompletion:

```powershell
Register-AutocompleteCommand -Commands 'git', 'docker', 'kubectl'
```

#### Use with Profile for Persistent Configuration

To make the autocomplete settings persistent across sessions, add the following to your PowerShell profile:

```powershell
Import-Module Register-AutocompleteCommand
Register-AutocompleteCommand -Commands 'git', 'docker', 'kubectl'
```

This will ensure that autocompletion is always enabled for the specified commands.

## How It Works

1. **Command Help Parsing**: The module uses the `help` output of the specified commands to identify their available options and arguments. Common help flags like `--help`, `-h`, or `/help` are automatically attempted.
2. **Dynamic Suggestions**: The options are dynamically generated and filtered based on the user’s input as they type.
3. **Interactive Description**: The autocompletion provides not just the option names but also descriptions parsed from the command's help output.

## Limitations

- Commands must support standard help options such as `--help` or `-h`.
- Some commands with non-standard help formats may not work as expected.
- Requires the commands to be present in the system’s PATH.

## License

This project is licensed under the [Licença CC BY-NC-SA 4.0](https://github.com/marcio1002/money-management/blob/master/LICENCE.MD). See the LICENSE file for details.
