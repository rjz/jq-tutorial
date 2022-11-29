Regular expressions (PCRE)
========================================

### Remove 'ab' subsequences from a list of strings


                 gsub(regex; tostring; flags)

Emit the string obtained by replacing all the  matches of regex in the input string with tostring, after interpolation. 

tostring should be a jq string, and may contain references to named captures. 

The named captures are, in effect, presented as a JSON object (as constructed by capture) to tostring, so a reference to a captured variable named "x" would take the form: "(.x)".