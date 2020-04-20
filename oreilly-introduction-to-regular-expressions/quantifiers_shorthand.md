There are some quantifiers that are so commonly used they have a shorthand symbol. 

## 0 or 1 Repetition (a.k.a., optional)

Take this case where we allow 0 or 1 instances of a digit preceding two alphabetic characters: 

`match(regex="[0-9]{0,1}[A-Z]{2}", str="BC")`{{execute}}

`match(regex="[0-9]{0,1}[A-Z]{2}", str="2BC")`{{execute}}

We can actually shorthand this using a question mark `?` which is the same as specifying `{0,1}`. 

`match(regex="[0-9]?[A-Z]{2}", str="BC")`{{execute}}

`match(regex="[0-9]?[A-Z]{2}", str="2BC")`{{execute}}


As you start combining different operations, a regular expression can start to look overwhelming. But the secret is to read a regex left-to-right, and looking at the case above you can interpret it as “I’m looking for a numeric digit that is optional, followed by an uppercase alphabetic character repeated two times.”

Taking our phone number example earlier, we can make the dashes now optional as shown here:

`match(regex="[0-9]{3}-?[0-9]{3}-?[0-9]{4}", str="470-127-7501")`{{execute}}

`match(regex="[0-9]{3}-?[0-9]{3}-?[0-9]{4}", str="4701277501")`{{execute}}


## 1 or More Repetitions

Take a quantifier that specifies we need a minimum of one instance of a pattern, but will take as many repetitions that exist after that. 

`match(regex="[XYZ]{1,}", str="Z")`{{execute}}

`match(regex="[XYZ]{1,}", str="XYZZZYZXXX")`{{execute}}

`match(regex="[XYZ]{1,}[0-9]{1,}", str="XYZZZYZXXX2374676128963453452990")`{{execute}}


A `+` is shorthand substitute for `{1,}`, which requires a minimum of 1 repetition, but will capture any number of repetitions after that.

`match(regex="[XYZ]+", str="Z")`{{execute}}

`match(regex="[XYZ]+", str="XYZZZYZXXX")`{{execute}}

`match(regex="[XYZ]+[0-9]+", str="XYZZZYZXXX2374676128963453452990")`{{execute}}

## 0 or More Repetitions

An asterisk `*` is a shorthand for `{0,}`, which makes whatever it is quantifying completely optional, but will capture as many repetitions it can if they do exist.

`match(regex="[0-3]+[XYZ]*", str="34")`{{execute}}

`match(regex="[0-3]+[XYZ]*", str="34YYXZZ")`{{execute}}

