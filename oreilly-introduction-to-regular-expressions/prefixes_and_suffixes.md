Especially when you are scanning documents, it can be helpful to qualify something that precedes or follows your targeted text without capturing it. Prefixes and suffixes allow this, and can be leveraged with `(?<=regex)` and `(?=regex)` respectively, where “regex” is the pattern for the head or tail you want to qualify but not include.

For instance, if I want to extract numbers that are preceded by uppercase letters, but I don’t want to include those letters, I can use a prefix like this:

`find(regex="(?<=[A-Z])[0-9]+", str="ALPHA12")`{{execute}}

`find(regex="(?<=[A-Z])[0-9]+", str="167")`{{execute}}


A suffix works similarly, but matches a tail without including that tail.

`find(regex="[0-9]+(?=[A-Z])", str="12ALPHA")`{{execute}}

`find(regex="[0-9]+(?=[A-Z])", str="167")`{{execute}}

Prefixes and suffixes are especially useful when you are using regular expressions to split text. Here's a weird but possibly useful example that uses both a prefix and suffix: split a string on commas _only_ if the comma is surrounded by numeric digits. 

`split("(?<=[0-9]),(?=[0-9])", "12,ALPHA,BETA,13,16,GAMMA")`{{execute}}

Intersting, right? Keep in mind that some platforms (like Python and Java) get whiny when you make prefixes and suffixes do too much, such as use quantifiers that are not fixed-width. 

Before we close, there is something for the Pythonistas: here are all the Python functions we used:

```
import re

def load_file(filepath):
    file = open(filepath, mode='r')
    text = file.read()
    file.close()
    return text


def match(regex, str):
    result = re.fullmatch(pattern=regex, string=str)
    if result:
        return 'MATCH'
    else:
        return 'NO MATCH'


def find(regex, str):
    result = re.findall(regex, str)

    if result:
        return result[0]
    else:
        return None


def split(regex, str):
    return re.split(regex, str)


def findall(regex, file):
    return re.findall(regex, load_file(file), re.MULTILINE)
```