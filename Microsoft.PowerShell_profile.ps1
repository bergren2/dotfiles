$env:CLAUDE_CODE_USE_POWERSHELL_TOOL = 1

Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

fnm env --use-on-cd | Out-String | Invoke-Expression

Invoke-Expression (&starship init powershell)
