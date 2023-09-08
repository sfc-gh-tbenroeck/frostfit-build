# frostfit-build
Code to build frostfit.store site using [Jamstack E-Commerce](https://github.com/jamstack-cms/jamstack-ecommerce).

# Optionally open the folder in the .devcontainer
- Install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension
- Press F1 and select `Dev Containers: Open Folder In Container`
- Use the VSCode terminal for all non GIT commands
- GIT commands should still be run from your local terminal

### Getting started

1. Clone the project

```sh
git clone https://github.com/sfc-gh-tbenroeck/frostfit-build
git submodule init
git submodule update
```

2. Install the dependencies:
```sh
npm install
```

3. Run the project

```sh
npm run build
```

# Deploy changes to Frostfit.store
```sh
# On local terminal
cd out
git checkout main
# In the .devcontainer frostfit-build root directory
./export-with-git.sh
# On local terminal
# Run git add, commit, push as normal
```
