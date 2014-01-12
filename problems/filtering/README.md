Filtering arrays
========================================

Data in `jq` is filtered using select

    $ cat data/products.json \
      | jq '.[] | select(.price > 100)'

The filter can also be applied to elements in the array using `map`:

    $ cat data/products.json \
      | jq 'map(select(.price > 100))'

The difference is a bit subtle, but this version will return an *array*
containing all matching items. This can be useful if valid JSON output
is needed.


