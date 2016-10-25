$flags = @(
    '--help', '-h'
    '--version', '-v',
    '--require',
    '--gulpfile',
    '--cwd',
    '--verify',
    '--tasks',
    '--depth',
    '--tasks-simple',
    '--tasks-json',
    '--color',
    '--no-color',
    '--silent', '-S',
    '--continue',
    '--log-level', '-L'
) | sort

function Get-GulpTasks($filter)
{
   (gulp --tasks-simple) | where { $_ -like "$filter*" }
}

function Get-GulpFlags($filter)
{
   $flags | where { $_ -like "$filter*" }
}
