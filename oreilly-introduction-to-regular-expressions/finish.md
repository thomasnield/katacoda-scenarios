We have come to the end! It is important to remember that you often only need to make a regular expression as specific as it needs to be, depending on how predictable your data is. Qualifying a number with `[0-9.]+` will work to match an IP address such as `172.18.83.200`. But keep in mind it will also match `237476231.345342342334.23423756756856234`, which is definitely not an IP address. If you do not know your data well, you should probably err on being more specific, as demonstrated in this [Stack Overflow question](https://stackoverflow.com/questions/5284147/validating-ipv4-addresses-with-regexp).

Regular expressions may seem niche, but they can rise up heroically to the most unexpected tasks in your day-to-day work. Hopefully this Katacoda has helped you feel more comfortable with regular expressions and find them useful. They can assist in data munging, qualification, categorization, and parsing as well as document editing.

For the Pythonistas, here are all the Python functions we used. 

```python
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