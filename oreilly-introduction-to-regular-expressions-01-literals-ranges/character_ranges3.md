We can also specify multiple ranges of values in a single character position. For example, we can match an alphanumeric character (either letter or digit) followed by a digit 0-9: 

`match(regex="[A-Z0-9][0-9]", str="I5")`{{execute}}

`match(regex="[A-Z0-9][0-9]", str="55")`{{execute}}

`match(regex="[A-Z0-9][0-9]", str="AZ")`{{execute}}

We can specify a range of uppercase or lowercase letters at a given position, effectively removing case sensitivity, like this using `[A-Za-z]`: 

`match(regex="[A-Za-z][0-9]", str="I5")`{{execute}}

`match(regex="[A-Za-z][0-9]", str="i5")`{{execute}}

A shorthand for an uppercase or lowercase letter can be shorthanded with `[A-z]`: 

`match(regex="[A-z][0-9]", str="I5")`{{execute}}

`match(regex="[A-z][0-9]", str="i5")`{{execute}}


We can also qualify a set of values along with a range. If we want to allow only 1,3,5 or an uppercase letter in the first position, we can do so with `[135A-Z]`:

`match(regex="[135A-Z][A-Z]", str="3B")`{{execute}}

`match(regex="[135A-Z][A-Z]", str="CB")`{{execute}}

`match(regex="[135A-Z][A-Z]", str="4B")`{{execute}}

Hopefully you have a growing appreciation for the specificity character ranges allow, and how they outperform simple and broad wildcarding patterns.

