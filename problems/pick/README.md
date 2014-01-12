Pick
========================================

### Pick fields from an object

`jq` retrieves named properties from objects by using `.` syntax:

    $ echo '{"foo": { "bar": "a value" }}' | jq .foo

Nested values are accessible as well:

    $ echo '{"foo": { "bar": "a value" }}' | jq .foo.bar

### Pick elements from an array:

Elements in an array may be extracted by index:

    $ echo '["snap","crackle","pop"]' | jq .[1]

More than one index? No problem!

    $ echo '["snap","crackle","pop"]' | jq .[1, 2]

We can even extract *all* elements at once by omitting the indices:

    $ echo '["snap","crackle","pop"]' | jq .[]

