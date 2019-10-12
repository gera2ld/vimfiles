md ~\.vim\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\.vim\autoload\plug.vim"
  )
)

echo "Install for NeoVim..."
md ~\AppData\Local\nvim
cmd /c mklink $HOME\AppData\Local\nvim\init.vim $HOME\.vim\vimrc

echo "Install for Vim..."
cmd /c mklink $HOME\.vimrc $HOME\.vim\vimrc

echo "Install plugins..."
nvim +PlugInstall +qall
