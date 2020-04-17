
Moving onto more interesting functionality, character ranges are a critical building block to regular expressions. They allow a set of valid characters at a given character position in a string. 

To match a string containing a character of 0, 1, or 3 followed by an F, X, or B, we can declare a regular expression with character ranges inside square brackets [].

`match(regex="[013][FXB]", str="1X")`{{execute}}

`match(regex="[013][FXB]", str="1Z")`{{execute}}

You can also define a consecutive span of letters or numbers by putting a – between them. We can qualify a character that is any number between 1 through 4 followed by any character that is A through F.

`match(regex="[1-4][A-F]", str="1C")`{{execute}}

`match(regex="[1-4][A-F]", str="51")`{{execute}}

If you want to simply match a number followed by a letter, qualify a range of all values for each: 

`match(regex="[0-9][A-Z]", str="7X")`{{execute}}

A shorthand for `[0-9]` can be expressed as `\d`, but keep in mind that using lots of `\` in a regular expression can hurt readability: 

`match(regex="\d[A-Z]", str="7X")`{{execute}}

If you want to qualify a range of values but include other characters, like a "-" or "_", put them in the character range first: 

`match(regex="[-_0-9][A-Z]", str="-X")`{{execute}}
`match(regex="[-_0-9][A-Z]", str="_X")`{{execute}}
`match(regex="[-_0-9][A-Z]", str="7X")`{{execute}}

To negate a set of characters, start the character range with a caret `^`. If we want to match anything but a number in the first position, followed by an uppercase letter, we can 

`match(regex="[^0-9][A-Z]", str="9X")`{{execute}}
`match(regex="[^0-9][A-Z]", str="FX")`{{execute}}
