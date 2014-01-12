### Output
========================================

`jq` doesn't have to return JSON.

    $ cat data/products.json
      | jq .[] | [.name, .price] | @csv

