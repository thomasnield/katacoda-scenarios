A critical feature of regular expressions is quantifiers, which repeat the preceding clause of a regular expression.

For instance, it is a bit redundant to express [A-Z] three times to match three uppercase letters.

`match(regex="[A-Z][A-Z][A-Z]", str="YCA")`{{execute}}

## Fixed Repetitions 

Instead, we can follow the `[A-Z]` with a quantifier `{3}` to specify repeating that character range three times, as in `[A-Z]{3}`. This accomplishes the same task as `[A-Z][A-Z][A-Z]`, but more succinctly expresses it as three repetitions.

`match(regex="[A-Z]{3}", str="YCA")`{{execute}}

We can use the regular expression below to match a 10-digit phone number with dashes.

`match(regex="[0-9]{3}-[0-9]{3}-[0-9]{4}", str="470-127-7501")`{{execute}}

`match(regex="[0-9]{3}-[0-9]{3}-[0-9]{4}", str="75663-2372")`{{execute}}

## Min and Max Repetitions

You can also express a minimum and maximum number of allowable repetitions. `[A-Z]{2,3}` will require a minimum of 2 repetitions but a maximum of 3.

`match(regex="[A-Z]{2,3}", str="YCA")`{{execute}}

`match(regex="[A-Z]{2,3}", str="AZ")`{{execute}}

`match(regex="[A-Z]{2,3}", str="ARIZONA")`{{execute}}

Leaving the second argument empty and having a comma still present will result in an infinite maximum, and therefore specify only a minimum. Below, we have a regex that will match on a minimum of two alphanumeric characters.

`match(regex="[A-Za-z0-9]{2,}", str="YZ1")`{{execute}}

`match(regex="[A-Za-z0-9]{2,}", str="YZSDjhfhSBH2342SDFSDFsdfw123412")`{{execute}}
