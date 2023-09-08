# frostfit-build
Code to build frostfit.store site using [Jamstack E-Commerce](https://github.com/jamstack-cms/jamstack-ecommerce).

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
cd out
git checkout main
cd ..
./export-with-git.sh
cd out
# Add, Commit, Push as normal
```
