
This environment has been set up to have a simple function called `regex_match(regex, str)`, which is what we will use to test our regular expressions with. Try it out! 

`regex_match(regex="[A-Z]{2}", str="TX")`{{execute}}

The first argument `regex` is our regular expression, and the second argument `str` is the string we are matching against. The function will return either `MATCH` or `NO MATCH`. 

For the curious this is actually set up in a Python3 environment using the following implementation: 

```python
import re

def regex_match(regex, str):
    result = re.fullmatch(pattern=regex, string=str)
    if result:
        return 'MATCH'
    else:
        return 'NO MATCH'
```

## Literals

In regular expressions, alphanumeric characters (letters A-Z and numbers 0-9) are treated as literals. This means they literally represent those characters and do not have any special functionality tied to them. For example, a regular expression of `TX` will only match a string `TX`. 

`regex_match(regex="TX", str="TX")`{{execute}}

However, there is a special set of characters (called **metacharacters**) that have special functionality tied to them. These characters include the following: 

`[]\^$.|?*+()`

We will learn about these functionalities in the rest of these scenarios. If you want to use any of these characters as literals, you will need to escape them by preceding with a `\`. For example, to match a string of `$180` you will need a regular expression of `\$180`. 

`regex_match(regex="\$180", str="$180")`{{execute}}

Conversely, putting a `\` in front of an alphabetic character will yield a special character literal. For example, `\s` can be used to match any whitespace. 

`regex_match(regex="Lorem\sIpsum", str="Lorem Ipsum")`{{execute}}


## Character Ranges 

For a given position in a string, we can qualify a range of valid characters. To match a string containing a character of 0, 1, or 3 followed by an F, X, or B, we can declare a regular expression with character ranges inside square brackets [].

`regex_match(regex="[013][FXB]", str="1X")`{{execute}}

`regex_match(regex="[013][FXB]", str="1Z")`{{execute}}

You can also define a consecutive span of letters or numbers by putting a – between them. We can qualify a character that is any number between 1 through 4 followed by any character that is A through Z.

`regex_match(regex="[1-4][A-Z]", str="1X")`{{execute}}

`regex_match(regex="[1-4][A-Z]", str="51")`{{execute}}

You can also qualify multiple ranges on a single character. For instance, we can qualify the first character in a two-character string to be an uppercase letter, a lowercase letter, or a number.

`regex_match(regex="[A-Za-z0-9][0-9]", str="i5")`{{execute}}

`regex_match(regex="[A-Za-z0-9][0-9]", str="1X")`{{execute}}

> Note that some platforms (like Python and Java) have options in their regular expression functions to turn off case sensitivity. This way you can avoid having to qualify both uppercase and lowercase character ranges. 

To negate characters, meaning you want anything but the specified characters, start your character range with a carrot ^. For example, we can qualify non-vowel letters:

`regex_match(regex="[^AEIOU]", str="X")`{{execute}}

`regex_match(regex="[^AEIOU]", str="E")`{{execute}}

If you want a literal dash – character to be part of the character range, declare it first in the range.

`regex_match(regex="[-0-9][0-9]", str="-9")`{{execute}}

`regex_match(regex="[-0-9][0-9]", str="89")`{{execute}}


Next let's talk about anchoring!
