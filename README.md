# My vim settings
Clone this repository to ~/.vim on Linux or ~/vimfiles on Windows, remove any existing file in

# setup with git on Windows:
Run in powershell (vim must be in path), this sets git to use the globally installed vim, which
is more likely to work with the vimrc (Default vim that comes with git does not have Python3).

    git config --global core.editor "$(Get-Command vim | % { $_.Source -replace '\\','\\\\' })"
