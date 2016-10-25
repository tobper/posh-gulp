@{

# Script module or binary module file associated with this manifest.
ModuleToProcess = 'posh-gulp.psm1'

# Version number of this module.
ModuleVersion = '1.0'

# ID used to uniquely identify this module
GUID = '4ee4f51f-00f8-4a73-8542-5333b0e45a0d'

# Author of this module
Author = 'Tobias Persson'

# Copyright statement for this module
Copyright = '(c) 2016 Tobias Persson'

# Description of the functionality provided by this module
Description = 'A PowerShell environment for Gulp'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Functions to export from this module
FunctionsToExport = @('Get-GulpTasks', 'TabExpansion')

# Cmdlets to export from this module
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module
AliasesToExport = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('gulp')

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/tobper/posh-gulp/blob/master/License.txt'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/tobper/posh-gulp'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

    } # End of PSData hashtable

} # End of PrivateData hashtable

}

