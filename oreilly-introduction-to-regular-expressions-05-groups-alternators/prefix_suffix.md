Especially when you are scanning documents, it can be helpful to qualify something that precedes or follows your targeted text without capturing it. Prefixes and suffixes allow this, and can be leveraged with `(?<=regex)` and `(?=regex)` respectively, where “regex” is the pattern for the head or tail you want to qualify but not include.

If I want to extract numbers that are preceded by uppercase letters, but I don’t want to include those letters, I can use a prefix like this:

`findall(regex="(?<=[A-Z])[0-9]+", str="ALPHA12")`{{execute}}

`findall(regex="(?<=[A-Z])[0-9]+", str="167")`{{execute}}

A suffix works similarly to the prefix, but matches a tail without including that tail using the declaration `(?=regex)`, where "regex" is the regular expression you want to qualify but not include. Below we identify numbers that are followed by 5 uppercase letters, without including those letters: 

`findall(regex="[0-9]+(?=[A-Z]{5})", str="12ALPHA")`{{execute}}

`findall(regex="[0-9]+(?=[A-Z]{5})", str="167")`{{execute}}

Many platforms will not like it when the prefix or suffix is not deterministically fixed width. For example, if put a `+` or `*` inside the prefix, the regex engine will complain that it is not fixed with. This means you cannot prefix an unlimited number of uppercase letters as attempted below: 

`findall(regex="(?<=[A-Z]+)[0-9]+", str="ALPHA12")`{{execute}}

Prefixes and suffixes are especially useful when you are using regular expressions to split text. Here's a weird but possibly useful example that uses both a prefix and suffix: split a string on commas _only_ if the comma is surrounded by numeric digits. 

`split("(?<=[0-9]),(?=[0-9])", "12,ALPHA,BETA,13,16,GAMMA")`{{execute}}

Intersting, right? Again keep in mind that some platforms (like Python and Java) get whiny when you make prefixes and suffixes do too much, such as use quantifiers that are not fixed-width. 