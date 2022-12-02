Regular expressions (PCRE)
========================================

## gsub


                 gsub(regex; tostring; flags)

Emit the string obtained by replacing all the  matches of regex in the input string with tostring, after interpolation. 

tostring should be a jq string, and may contain references to named captures. 

The named captures are, in effect, presented as a JSON object (as constructed by capture) to tostring, so a reference to a captured variable named "x" would take the form: "(.x)".


## capture

                capture(regex; flags)
                
Collects the named captures in a JSON object, with the name of each capture as the key, and the matched string as the corresponding value.