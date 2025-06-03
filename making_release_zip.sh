
# This zip file will be in the top level folder so in extraction time i need to careful
# unzip vs_code_setup_offline_v1.0.0.zip -d folder_name



VERSION="v1.0.0"

repo_name=$(basename "$(pwd)")

zip -r "${repo_name}_$VERSION.zip" . -x "*.git*"

echo "This zip file is made for the release of this repo, i.e., $repo_name."