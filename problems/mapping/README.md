Mapping arrays
========================================

The `map` filter transforms each item of an input array to produce
an output array. For example, a simple map to select the price of
each entry in a list of products would look like:

    $ cat data/products.json \
      | jq 'map(.price)'

`map` functions may be built from other jq operators and methods.

    $ cat data/products.json \
      | jq 'map({ name, isSpensive: (.price > 100) })'

