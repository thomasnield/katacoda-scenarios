There are a handful of shorthand symbols for common quantifiers.

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
