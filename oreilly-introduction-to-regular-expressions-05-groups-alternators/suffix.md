
A suffix works similarly to the prefix, but matches a tail without including that tail using the declaration `(?=regex)`, where "regex" is the regular expression you want to qualify but not include. Below we identify numbers that are followed by 5 uppercase letters, without including those letters: 

`find(regex="[0-9]+(?=[A-Z]{5})", str="12ALPHA")`{{execute}}

`find(regex="[0-9]+(?=[A-Z]{5})", str="167")`{{execute}}

Prefixes and suffixes are especially useful when you are using regular expressions to split text. Here's a weird but possibly useful example that uses both a prefix and suffix: split a string on commas _only_ if the comma is surrounded by numeric digits. 

`split("(?<=[0-9]),(?=[0-9])", "12,ALPHA,BETA,13,16,GAMMA")`{{execute}}

Intersting, right? Again keep in mind that some platforms (like Python and Java) get whiny when you make prefixes and suffixes do too much, such as use quantifiers that are not fixed-width. 