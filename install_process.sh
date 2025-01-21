
echo "This Script Will Help to install VS CODE and It's Extensions offline."

echo "Please Make Sure this computer is offline, unplug the Lan Line."

echo "Remember to keep the internet off if you want to avoid downloading additional dependencies. - Rana Universe 🍌"

nmcli radio wifi off && echo "Wifi has been turned off🙃🙂‍↕️🍌, Please don't turn on wifi until the installation has completed" || echo "Some error has occurred, please turn off wifi/internet connection on this machine"

echo "If wifi has been terned off, please don't turn on it until VS Code has been installed.'"

echo "Visual Studio Code is installing..."
sudo dpkg -i code_*.deb


echo "The Extensions For VS Code are installing..."
# Install VS Code extensions

code --install-extension extensions_files/Miladfathy.dragan-color-theme-*.vsix
code --install-extension extensions_files/python/ms-python.debugpy-*.vsix
code --install-extension extensions_files/python/ms-python.python-*.vsix
code --install-extension extensions_files/python/ms-python.vscode-pylance-*.vsix
code --install-extension extensions_files/python/ms-python.black-formatter-*.vsix

echo "VS Code and its extensions has been installed successfully."

# Copy keyboard shortcuts and settings
echo "Loading VS Code keyboard shortcuts and settings..."

mkdir -p ~/.config/Code/User/
cp -v config_files/{keybindings.json,settings.json,tasks.json} ~/.config/Code/User/

echo "VS Code Settings has been set up successfully 🍌🍌🍌"
