
We are going to use Python to learn about regular expression literals and character ranges. To streamline the experience a little bit, let us wrap up some of the Python regex functions into our own function called `match(regex, str)`. Copy it to our editor so we can use it:

<pre class="file" data-filename="regex_helper.py" data-target="replace">
import re

def match(regex, str):
    result = re.fullmatch(pattern=regex, string=str)
    if result:
        return 'MATCH'
    else:
        return 'NO MATCH'
</pre>

Now let's test a regular expression to see if the function works: 


`match(regex="[A-Z]{2}", str="TX")`{{execute}}

The first argument `regex` is our regular expression, and the second argument `str` is the string we are matching against. The function will return either `MATCH` or `NO MATCH`. 

Alright, let's get started!