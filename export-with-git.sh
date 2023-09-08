#!/bin/bash

# Enable exit on error, and pipefail to catch errors in pipes
set -e
set -o pipefail

# Step 1: Create a backup of the necessary files and directory
echo "Backup step started..."
mkdir -p ./exportbackup
cp -r ./out/.git ./exportbackup/.git
cp ./out/CNAME ./exportbackup/CNAME
cp ./out/.nojekyll ./exportbackup/.nojekyll
echo "Backup step completed."

# Step 2: Run npm run build (separating the build and export steps for detailed logging)
echo "Build step started..."
npm run build
echo "Build step completed."

# Step 3: Run npm run export
echo "Export step started..."
npm run export
echo "Export step completed."

# Step 4: Restore the files and directory from the backup
echo "Restore step started..."
cp -r ./exportbackup/.git ./out/.git
cp ./exportbackup/CNAME ./out/CNAME
cp ./exportbackup/.nojekyll ./out/.nojekyll
echo "Restore step completed."

# Optional: Remove the backup directory
rm -rf ./exportbackup

echo "Script executed successfully."

# Function to execute on script failure, reporting the step where it failed
function failure {
    local lineno=$1
    local msg=$2
    echo "Failed at $lineno: $msg"
}

# Trap errors and execute the failure function
trap 'failure ${LINENO} "$BASH_COMMAND"' ERR
