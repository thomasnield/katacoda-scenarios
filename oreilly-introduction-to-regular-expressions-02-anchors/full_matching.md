Different environments (e.g. SQL, Python, Java) might have different default behaviors in doing partial matches or full matches. To ensure a full match, anchors can come in handy. 

Both the start-of-line `^` and end-of-line `$` together can be helpful to force a full match and ignore partial ones. This is because qualifying the start `^` and end `$` of a line forces everything between them to be the only contents allowed.

For example, we can force a full match of 2 digits and not qualify a partial match that exists in 3 or more digits.

`match(regex="^[0-9][0-9]$", str="23")`{{execute}}

`match(regex="^[0-9][0-9]$", str="237")`{{execute}}

Note to force a full match on an entire string, we should use `\A` and `\Z` instead of `^` and `$`: 

`match(regex="\A[0-9][0-9]\Z", str="23")`{{execute}}

`match(regex="\A[0-9][0-9]\Z", str="237")`{{execute}}

However, if you know your string is going to be one line then `^` and `$` should work just fine. But `\A` and `\Z` becomes necessary when multiple lines could exist in the string, and you want to force a full match on the entire contents. 

Our `match()` function in Python is configured to do a full match, not a partial one, so in this case it is unnecessary to do anchoring. But if you are ever in doubt, it is a good habit to anchor if you are unsure whether a platform does full or partial matches by default. This will also make the regular expression more portable. 