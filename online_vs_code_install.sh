#!/bin/bash

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
sudo dpkg -i "$new_file_name"


# i will do the vs code install and some automatic settings.🍌🍌🍌


# Copy keyboard shortcuts and settings
echo "Loading My VS Code keyboard shortcuts and settings..."

mkdir -p ~/.config/Code/User/
cp -v config_files/{keybindings.json,settings.json,tasks.json} ~/.config/Code/User/

echo "VS Code Settings has been set up successfully 🍌🍌🍌"


# Now the extensions will be installed
echo "My Favourite Good Looking Dragan Color Theme Extension is installing..."

code --install-extension Miladfathy.dragan-color-theme



echo "Do You want to install the extensions for Python???(Yes/No)"

yes_msg="Extensions will install Soon...😁"
no_msg="Extensions will Not installed...😢"

read -r response

# Convert response to lowercase
response=$(echo "$response" | tr '[:upper:]' '[:lower:]')

if [ "$response" = "yes" ] || [ "$response" = "y" ]; then
    echo "$yes_msg"

    echo "The Python & Pylance & Debugpy, ie. 3 Essential Python Extensions will download & install soon."
    code --install-extension ms-python.python

    echo "The Formatter helps me to format my code goodly."
    code --install-extension ms-python.black-formatter


elif [ "$response" = "no" ]; then
    echo "$no_msg"


else
    echo "You wrote '$response', which is invalid response. pls run this script sh file again."


fi

echo "VS Code Setup Has Been Finished Successfully 🍌🍌🍌."
