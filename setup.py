import os
import sys
import subprocess

print("Installing Vundle.vim")
print(os.popen("git submodule update --init").read())

print("Installing plugins")
subprocess.call("vim +PluginInstall +qall", shell=True)

print("Compiling YouCompleteMe")
sys.path.append("bundle/YouCompleteMe")
import install
install.Main()
