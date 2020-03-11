It can be helpful to group up parts of a regular expression in parentheses, often to use a quantifier on that whole group. For instance, if you want to qualify an uppercase letter followed by three numeric digits, but want to repeat that whole operation with a quantifier, you can do so like this:

`match(regex="([A-Z][0-9]{3})+", str="A563")`{{execute}}

`match(regex="([A-Z][0-9]{3})+", str="A563X264")`{{execute}}

`match(regex="([A-Z][0-9]{3}-?)+", str="A563-X264-C578")`{{execute}}

If we wanted to identify phone numbers (with optional dashes `-`), but make the area code (the first three digits) optional, we can do so like this:

`match(regex="([0-9]{3}-)?[0-9]{3}-?[0-9]{4}", str="470-127-7501")`{{execute}}

`match(regex="([0-9]{3}-)?[0-9]{3}-?[0-9]{4}", str="127-75011")`{{execute}}

Commonly used with grouping as well is the alternator `|` operator, which essentially functions as an `OR`. For example, I can specify I am looking for 3 digits followed by 3 alphabetic characters. But I can also accept the string "N/A" instead of 3 alphabetic characters. 

`match(regex="([0-9]{3}(([A-Z]{3})|(N/A))"), str="473ABQ")`{{execute}}

`match(regex="([0-9]{3}(([A-Z]{3})|(N/A))"), str="473N/A")`{{execute}}

A simpler example of grouping is just specifying a set of valid literal strings, like matching only "ALPHA", "BETA", or "GAMMA". 

`match(regex="ALPHA|BETA|GAMMA", str="BETA")`{{execute}}

`match(regex="ALPHA|BETA|GAMMA", str="DELTA")`{{execute}}