import os
import sys
import subprocess

print("Installing Vundle.vim")
print(os.popen("git submodule update --init").read())

print("Installing plugins")
subprocess.call("vim -u plugins.vim +PluginInstall +qall", shell=True)
