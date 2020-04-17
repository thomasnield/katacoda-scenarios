We can also specify multiple ranges of values in a single character position. For example, we can match an alphanumeric charater (either letter or digit) followed by a digit 0-9: 

`match(regex="[A-Z0-9][0-9]", str="I5")`{{execute}}
`match(regex="[A-Z0-9][0-9]", str="55")`{{execute}}
`match(regex="[A-Z0-9][0-9]", str="AZ")`{{execute}}

