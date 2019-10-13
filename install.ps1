$cwd = Split-Path $script:MyInvocation.MyCommand.Path
Write-Host "Install vimfiles from $cwd..."
[System.IO.File]::WriteAllText("$cwd/vimrc", "se rtp+=$cwd`n`nru lib/index.vim")

Write-Host "Install for NeoVim..."
New-Item ~\AppData\Local\nvim -ItemType Directory -Force | Out-Null
Remove-Item $HOME\AppData\Local\nvim\init.vim -ErrorAction Ignore
cmd /c mklink $HOME\AppData\Local\nvim\init.vim $cwd\vimrc

Write-Host "Install for Vim..."
Remove-Item $HOME\.vimrc -ErrorAction Ignore
cmd /c mklink $HOME\.vimrc $cwd\vimrc

Write-Host "Install plugins..."
New-Item $cwd\autoload -ItemType Directory -Force | Out-Null
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "$cwd\autoload\plug.vim"
  )
)
nvim +PlugInstall +qall
