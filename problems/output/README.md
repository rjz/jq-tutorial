Output
========================================

`jq` doesn't have to return JSON. Formats including `@text`,
`@base64`, and--yes--`@json` can be used to produce convenient
output.

    $ cat data/products.json \
      | jq '.[] | [.name, .price] | @csv'

Run by itself, this will still return each line as a string. To
produce valid CSV data, we would need to run `jq` with the `-r`
(`--raw-output`) option:

    $ cat data/products.json \
      | jq -r '.[] | [.name, .price] | @csv' > products.csv

