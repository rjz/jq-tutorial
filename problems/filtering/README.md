Filtering arrays
========================================

The `select` filter helps separate the wheat from the chaff. The
rule is simple: when an item passes, `select` returns it; when it
fails, no output comes back.

This is useful for sorting through both destructured array values:

    $ cat data/products.json \
      | jq '.[] | select(.price > 100)'

..and--when valid JSON is needed--in coordination with `map`:

    $ cat data/products.json \
      | jq 'map(select(.price > 100))'

