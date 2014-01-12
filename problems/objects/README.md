Constructing objects
========================================

`jq` can also be used to transform data. For instance, to construct a
single-element array with the contents of `foo`:

    $ echo '{"foo": { "bar": "a value" }}' \
      | jq '[.foo]'

Constructing objects is very similar:

    $ echo '{"foo": { "bar": "a value" }}' \
      | jq '{ foz: .foo }'

There's a handy shortcut for carrying a key-value pair to the output
object: if a key is referenced *without* a value or the `.` selector,
it will be copied into the output object:

    $ echo '{"foo": { "bar": "a value" }}' \
      | jq '{ foo, why: "demonstration copy" }'

