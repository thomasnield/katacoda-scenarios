There are some quantifiers that are so commonly used they have a shorthand symbol. Let's start with the *optional*, which matches 0 or 1 characters. 

Take this case where we allow 0 or 1 instances of a numeric digit, effectively making it optional. 

`match(regex="[0-9]{0,1}[A-Z]{2}", str="BC")`{{execute}}

`match(regex="[0-9]{0,1}[A-Z]{2}", str="2BC")`{{execute}}

We can actually shorthand this using a question mark `?` which is the same as specifying `{0,1}`. 

`match(regex="[0-9]?[A-Z]{2}", str="BC")`{{execute}}

`match(regex="[0-9]?[A-Z]{2}", str="2BC")`{{execute}}

Taking our phone number example earlier, we can make the dashes now optional as shown here:

`match(regex="[0-9]{3}-?[0-9]{3}-?[0-9]{4}", str="470-127-7501")`{{execute}}

`match(regex="[0-9]{3}-?[0-9]{3}-?[0-9]{4}", str="4701277501")`{{execute}}

We can also optionally match paranthesis in the area code. Note that the paranthesis `(` is a metacharacter so we need to escape it with a slash `\(`:  

`match(regex="\(?[0-9]\)?{3}-?[0-9]{3}-?[0-9]{4}", str="(470)-127-7501")`{{execute}}

`match(regex="\(?[0-9]\)?{3}-?[0-9]{3}-?[0-9]{4}", str="470-127-7501")`{{execute}}

`match(regex="\(?[0-9]\)?{3}-?[0-9]{3}-?[0-9]{4}", str="4701277501")`{{execute}}

As you start combining different operations, a regular expression can start to look overwhelming. But the secret is to read a regex left-to-right, and looking at the case above you can interpret it as “I’m looking for a numeric digit that is optional, followed by an uppercase alphabetic character repeated two times.”
