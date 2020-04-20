
We are going to use Python to learn about regular expression literals and character ranges. To streamline the experience a little bit, some Python regex functions have been wrapped into a function called `match(regex, str)` into the file `regex_helper.py` to the right. 

```python
import re

def match(regex, str):
    result = re.fullmatch(pattern=regex, string=str)
    if result:
        return 'MATCH'
    else:
        return 'NO MATCH'
```

Test a regular expression to see if the function works: 


`match(regex="[A-Z]{2}", str="TX")`{{execute}}

The first argument `regex` is our regular expression, and the second argument `str` is the string we are matching against. The function will return either `MATCH` or `NO MATCH`. 



Alright, let's get started!