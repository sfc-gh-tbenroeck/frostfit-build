# frostfit-build
Code to build frostfit.store site using [Jamstack E-Commerce](https://github.com/jamstack-cms/jamstack-ecommerce). 

## Jamstack E-Commerce Next

Jamstack ECommerce Next provides a way to quickly get up and running with a fully configurable ECommerce site using Next.js.

Out of the box, the site uses completely static data coming from a provider at `providers/inventoryProvider.js`. You can update this provider to fetch data from any real API by changing the call in the `getInventory` function.

### Getting started

1. Clone the project

```sh
$ git clone https://github.com/sfc-gh-tbenroeck/frostfit-build
```

2. Install the dependencies:

```sh
$ yarn

# or

$ npm install
```

3. Run the project

```sh
$ npm run dev

# or to build

$ npm run build
```

4. Deploy the contents of the `out` folder
