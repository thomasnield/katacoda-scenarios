Especially when you are scanning documents, it can be helpful to qualify something that precedes or follows your targeted text without capturing it. Prefixes and suffixes allow this, and can be leveraged with `(?<=regex)` and `(?=regex)` respectively, where “regex” is the pattern for the head or tail you want to qualify but not include.

For instance, if I want to extract numbers that are preceded by uppercase letters, but I don’t want to include those letters, I can use a prefix like this:

`findall(regex="(?<=[A-Z])[0-9]+", str="ALPHA12")`{{execute}}

`findall(regex="(?<=[A-Z])[0-9]+", str="167")`{{execute}}

The prefix is defined by `(?<=regex)`, where "regex" is the regular expression you want to qualify but not include.

Many platforms will not like it when the prefix or suffix is not deterministically fixed width. For example, if put a `+` or `*` inside the prefix, the regex engine will complain that it is not fixed with. This means you cannot prefix an unlimited number of uppercase letters as attempted below: 

`findall(regex="(?<=[A-Z]+)[0-9]+", str="ALPHA12")`{{execute}}
