#!/bin/bash

echo "This has not make goodly till now."

echo "This will download the latest vs code app from the internet and then use the extensions i have here, to setup my VS Code."

echo "Cleaning up old files matching 'code_*.deb'..."
rm -v code_*.deb 2>/dev/null


# Link for official VS Code
link_of_vs_code="https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"

# Download the file with --content-disposition
echo "Downloading VS Code For My Ubuntu Linux..."
wget --content-disposition "$link_of_vs_code"

# Capture the downloaded file name matching the pattern
file_name=$(ls code_*.deb 2>/dev/null)

# Check if the file was downloaded
if [[ -z "$file_name" ]]; then
  echo "Error: No file matching 'code_*.deb' was Downloaded."
  exit 1
fi

echo "Downloaded file name: $file_name"

# Rename the file
new_file_name="vs_code_application_by_rana_universe.deb"

echo "Copying $file_name to a New File, $new_file_name"
cp -v "$file_name" "$new_file_name"

# Install the .deb package
echo "Installing $new_file_name..."
# sudo dpkg -i "$new_file_name"


# i will do the vs code install and some automatic settings.🍌🍌🍌


# Copy keyboard shortcuts and settings
echo "Loading My VS Code keyboard shortcuts and settings..."

cp -v config_files/{keybindings.json,settings.json} ~/.config/Code/User/

echo "VS Code Settings has been set up successfully 🍌🍌🍌"


# Now the extensions will be installed
echo "My Favourite Good Looking Dragan Color Theme Extension is installing..."
code --install-extension extensions/Miladfathy.dragan-color-theme-*.vsix



echo "Do You want to install the extensions for Python???"

yes_msg="Extensions will install soon...😁"
no_msg="Extensions will Not installed...😢"

read -r response

# Convert response to lowercase
response=$(echo "$response" | tr '[:upper:]' '[:lower:]')

if [ "$response" = "yes" ] || [ "$response" = "y" ]; then
    echo "$yes_msg"

    code --install-extension extensions_files/python_related_extensions/ms-python.debugpy-*.vsix
    code --install-extension extensions_files/python_related_extensions/ms-python.python-*.vsix
    code --install-extension extensions_files/python_related_extensions/ms-python.vscode-pylance-*.vsix
    code --install-extension extensions_files/python_related_extensions/ms-python.black-formatter-*.vsix


elif [ "$response" = "no" ]; then
    echo "$no_msg"


else
    echo "You wrote '$response', which is invalid response. pls run this script sh file again."


fi


