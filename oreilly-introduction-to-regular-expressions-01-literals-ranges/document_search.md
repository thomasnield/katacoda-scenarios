We can also use regular expressions to search documents. Here is a final example where we find partial matches across a larger string that spans multiple lines. 

Belowe we have a file `flights.txt` that contains three flight records. 

```
AS ABQ DAL 12:35 13:45 180
NK PHX HOU 14:15 16:45 190
AA MDW JFK 12:45 14:35 180
```

Another regular expression function we implemented is called `findall(regex,file)`. Instead of simply returning a full match, it will return all partial matches that are found in a text file. Below we get all 3-letter airport codes from the `flights.txt` file: 

`findall(regex='[A-Z][A-Z][A-Z]', file='flights.txt')`{{execute}}


We implement the `findall()` function with the Python code below: 

```python
import re

def findall(regex, str=None, file=None):
    if str is None:
        str = load_file(file)
        
    return re.findall(regex, str, re.MULTILINE)
```

**Resources:**

An Introduction to Regular Expressions: 
https://learning.oreilly.com/library/view/an-introduction-to/9781492082569/

Python Docs:
https://docs.python.org/2/library/re.html

Understanding Regular Expressions (Videos):
https://learning.oreilly.com/videos/understanding-regular-expressions/9781491996300
 
Regex101:
https://regex101.com/
