
We are going to use Python to learn about regular expressions (also known as "regex"), in particular literals and character ranges. To streamline the experience a little bit, let us wrap up some of the Python functions into our own function called `match(regex, str)`. Let's put it in our editor so we can use it:

<pre class="file" data-filename="regex_helper.py" data-target="replace">
import re

def match(regex, str):
    result = re.fullmatch(pattern=regex, string=str)
    if result:
        return 'MATCH'
    else:
        return 'NO MATCH'
</pre>


`match(regex="[A-Z]{2}", str="TX")`{{execute}}

The first argument `regex` is our regular expression, and the second argument `str` is the string we are matching against. The function will return either `MATCH` or `NO MATCH`. 


In regular expressions, alphanumeric characters (letters A-Z and numbers 0-9) are treated as literals. This means they literally represent those characters and do not have any special functionality tied to them. For example, a regular expression of `TX` will only match a string "TX". 

`match(regex="TX", str="TX")`{{execute}}

`match(regex="TX", str="AZ")`{{execute}}

However, there is a special set of characters (called **metacharacters**) that have special functionality tied to them. These characters include the following: 

`[]\^$.|?*+()`

We will learn about these functionalities in this and other scenarios. If you want to use any of these characters as literals, you will need to escape them by preceding with a `\`. For example, to match a string of "$180" you will need a regular expression of `\$180`. 

`match(regex="\$180", str="$180")`{{execute}}

Conversely, putting a `\` in front of an alphabetic character can yield a special character literal. For example, `\s` can be used to match any whitespace. 

`match(regex="Lorem\sIpsum", str="Lorem Ipsum")`{{execute}}

We will learn about these special literals enabled by the `\` in this and other modules. But here are some that might come in handy: 

|Regex|Description|
|---|---|
| | A single blank space " " can be used to match a space|
|\s|Matches whitespace including tabs, newlines, carriage returns|
|\S|Matches non-whitespace characters|
|\w|Matches a word character|
|\W|Matches a non-word character|


Reference: 

https://www.w3schools.com/python/python_regex.asp


