# Starship config
#Invoke-Expression (& 'C:\Users\dbori\scoop\apps\starship\current\starship.exe' init powershell --print-full-init | Out-String)

# Prompt
Import-Module posh-git
Import-Module oh-my-posh
oh-my-posh init pwsh --config C:\Users\dbori\AppData\Local\oh-my-posh\themes\takuya.omp.json | Invoke-Expression
#oh-my-posh init pwsh --config C:\Users\dbori\AppData\Local\oh-my-posh\themes\powerlevel10k_modern.omp.json | Invoke-Expression

# Alias
Set-Alias g git
Set-Alias -Name s -Value status

# Shorten Path Directory
#function prompt {
#  $p = Split-Path -leaf -path (Get-Location)
#  "$p> "
#}
