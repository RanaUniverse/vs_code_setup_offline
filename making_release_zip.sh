# This zip file will be in the top-level folder so be careful during extraction
# Example to unzip:
# unzip vscode_ubuntu_v1.0.0_vscode_version_9.99.999.zip -d folder_name


# Set your custom version and the VS Code version
# Remember before making the zip i need to change the version name and make the zip.
# I need to keep the latest vs code .deb file here in the current directory.

My_VERSION="v2.1.0"
VSCode_VERSION="1.103.1"


# Get repo name from current directory
repo_name=$(basename "$(pwd)")

# Construct zip file name
zip_name="${repo_name}_${My_VERSION}_vscode_${VSCode_VERSION}.zip"

# Create the zip file, excluding .git directory and its contents
zip -r "$zip_name" . -x "*.git*" ".git/*"

# Final message
echo "This zip file is made for the release of this repo ($repo_name), version: $My_VERSION, with VS Code version: $VSCode_VERSION."

echo "Created zip: $zip_name"
