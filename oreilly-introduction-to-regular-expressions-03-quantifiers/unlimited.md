
We also have two shorthand quantifiers that specify a minimum number of 1 or 0 repetitions, but will capture as many repetitions that exist after that. 

## 1 or More Repetitions

Take a quantifier that specifies we need a minimum of one instance of a pattern, but will take as many repetitions that exist after that. Below we capture `[XYZ]` and `[0-9]` sequences that repeat at least once: 

`match(regex="[XYZ]{1,}", str="Z")`{{execute}}

`match(regex="[XYZ]{1,}", str="XYZZZYZXXX")`{{execute}}

`match(regex="[XYZ]{1,}[0-9]{1,}", str="XYZZZYZXXX2374676128963453452990")`{{execute}}


A `+` is shorthand substitute for `{1,}`, which requires a minimum of 1 repetition, but will capture any number of repetitions after that. Here is how we can express the above examples with the `+`: 

`match(regex="[XYZ]+", str="Z")`{{execute}}

`match(regex="[XYZ]+", str="XYZZZYZXXX")`{{execute}}

`match(regex="[XYZ]+[0-9]+", str="XYZZZYZXXX2374676128963453452990")`{{execute}}

## 0 or More Repetitions

An asterisk `*` is a shorthand for `{0,}`, which makes whatever it is quantifying completely optional, but will capture as many repetitions it can if they do exist.

`match(regex="[0-3]+[XYZ]*", str="32")`{{execute}}

`match(regex="[0-3]+[XYZ]*", str="32YYXZZ")`{{execute}}

A common regular expression `.*` is a wildcard to match anything, and we will cover the dot operator `.` in the next scenario. 


**Resources:**

An Introduction to Regular Expressions: 
https://learning.oreilly.com/library/view/an-introduction-to/9781492082569/

Python Docs:
https://docs.python.org/2/library/re.html

Understanding Regular Expressions (Videos):
https://learning.oreilly.com/videos/understanding-regular-expressions/9781491996300
 
Regex101:
https://regex101.com/
