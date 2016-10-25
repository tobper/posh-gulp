if (Test-Path Function:\TabExpansion)
{
    cp Function:\TabExpansion Function:\OriginalTabExpansion
}

function TabExpansion($line, $lastWord)
{
    $lastBlock = [regex]::Split($line, '[|;]')[-1].TrimStart()

    if ($lastBlock -match "^$(Get-AliasPattern gulp)\s+(?<arguments>.*)")
    {
        switch -regex ($matches['arguments'])
        {
            "^([-]\S*\s+)*(?<task>[^-]\S*)$"
            {
                Get-GulpTasks $matches['task']
            }

            "^(\S+\s+)*(?<flag>-\S*)$"
            {
                Get-GulpFlags $matches['flag']
            }
        }
    }
    elseif (Test-Path Function:OriginalTabExpansion)
    {
        OriginalTabExpansion $line $lastWord
    }
}
