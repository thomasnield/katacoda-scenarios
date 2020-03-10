

## Setup

We are going to use Python to test our regular expressions in this demo. So first, let's fire up the Python environent. 

`python3`{{execute}}

Next import the regular expression functionality called `re`. 

`import re`{{execute}}

We are going to create a simple helper function to test for regular expression matches quickly. 

```
def regex_match(pattern, string):
	result = re.fullmatch(pattern="[A-Z]{2}", string="TX")

	if result:
		return "match"
	else:
		return "Doesn't match"
```

To test for a regular expression match, we will use the `fullmatch()` function like this. The `pattern` is the regular expression we want to test. The `string` is the text we test the regular expression against. 

`re.fullmatch(pattern="[A-Z]{2}", string="TX")`{{execute}}