It can be helpful to group up parts of a regular expression in parentheses, often to use a quantifier on that whole group. For instance, if you want to qualify an uppercase letter followed by three numeric digits, but want to capture as many repetitions of that sequence that exist, you can do so like this:

`match(regex="([A-Z][0-9]{3})+", str="A563")`{{execute}}

`match(regex="([A-Z][0-9]{3})+", str="A563X264")`{{execute}}

`match(regex="([A-Z][0-9]{3})+", str="A563X264U743")`{{execute}}

`match(regex="([A-Z][0-9]{3}-?)+", str="A563-X264-C578")`{{execute}}

Grouping is a powerful functionality in regular expressions, as it allows us to express more complex patterns and repeat entire sequences of sub-sequences. 

If we wanted to identify phone numbers (with optional dashes `-`), but make the area code (the first three digits) optional, we can group up the area code and make it optional with `?`: 

`match(regex="([0-9]{3}-)?[0-9]{3}-?[0-9]{4}", str="470-127-7501")`{{execute}}

`match(regex="([0-9]{3}-)?[0-9]{3}-?[0-9]{4}", str="127-75011")`{{execute}}

Here is another example using groups with optionals. If we need to qualify U.S. zip codes but optionally include the four digit extension, we can group up that four digit extension and make it optional: 

`match(regex="[0-9]{5}(-[0-9]{4})?", str="75035-8564")`{{execute}}

`match(regex="[0-9]{5}(-[0-9]{4})?", str="75035")`{{execute}}
