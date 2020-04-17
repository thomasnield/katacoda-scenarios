If you want to qualify a range of values but include other characters, like a "-" or "_", put them in the character range first: 

`match(regex="[-_0-9][A-Z]", str="-X")`{{execute}}
`match(regex="[-_0-9][A-Z]", str="_X")`{{execute}}
`match(regex="[-_0-9][A-Z]", str="7X")`{{execute}}

Most metacharacters we cautioned about escaping with `\` earlier, including `[]\^$.|?*+()`, will be treated as literals automatically if they are inside a character range. So there is no need to escape them inside a character range. 

To negate a set of characters, start the character range with a caret `^`. If we want to match anything but a number in the first position, followed by an uppercase letter, we can do so like this using `[^0-9]`: 

`match(regex="[^0-9][A-Z]", str="9X")`{{execute}}
`match(regex="[^0-9][A-Z]", str="FX")`{{execute}}


