

## Setup

We are going to use Python to test our regular expressions in this demo. So first, let's fire up the Python environent. 

`python3`{{execute}}

Next import the regular expression functionality called `re`. 

`import re`{{execute}}

We are going to create a simple helper function to test for regular expression matches quickly. 

To test for a regular expression match, we will use the `fullmatch()` function like this. The `pattern` is the regular expression we want to test. The `string` is the text we test the regular expression against.

We will simply wrap all this in a Python function that will return either "Match" or "Doesn't Match".  

```
def regex_match(regex, str):
    result = re.fullmatch(pattern=regex, string=str)
    if result:
        return "MATCH"
    else:
        return "NO MATCH"
		

```{{execute}}

 Let's test our first regular expression.

`regex_match("[A-Z]{2}", "TX")`{{execute}}