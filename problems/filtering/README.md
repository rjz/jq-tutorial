Filtering arrays
========================================

`jq` provides the `select` filter to apply test conditions to data.
When an item passes, `select` returns it; when it fails, no output
is provided.

This is useful for sorting through destructured array values:

    $ cat data/products.json \
      | jq '.[] | select(.price > 100)'

The filter can also be applied to elements in the array by using it
in coordination with `map`:

    $ cat data/products.json \
      | jq 'map(select(.price > 100))'

This is extremely handy when valid JSON output is needed.

