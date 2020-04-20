You can also express a minimum and maximum number of allowable repetitions. `[A-Z]{2,3}` will require 2-3 alphabetic characters: 

`match(regex="[A-Z]{2,3}", str="YCA")`{{execute}}

`match(regex="[A-Z]{2,3}", str="AZ")`{{execute}}

`match(regex="[A-Z]{2,3}", str="ARIZONA")`{{execute}}

Leaving the second argument empty and having a comma still present will result in an infinite maximum, and therefore specify only a minimum. Below we have a regex that will match on a minimum of two alphanumeric characters.

`match(regex="[A-Za-z0-9]{2,}", str="YZ1")`{{execute}}

`match(regex="[A-Za-z0-9]{2,}", str="YZSDjhfhSBH2342SDFSDFsdfw123412")`{{execute}}

Just remember that quantifiers will still match the specified pattern they attach to. If I was to sprinkle in some non-alphanumeric characters in a string, and use a regular expression that searches for 2 or more alphanumeric characters, there will not be a match (at least not a full one): 

`match(regex="[A-Za-z0-9]{2,}", str="YZSDjhfh,SBH#2342SDF?SDFsdfw1&23412")`{{execute}}
