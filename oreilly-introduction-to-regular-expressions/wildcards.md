A dot `.` is a wildcard for any character, making it the broadest operator you can use. It will match not just alphabetic or numeric characters, but also whitespaces, newlines, punctuation, and any other symbols. This means you should use it wisely, as it is often better to be specific. 

`match(regex="...", str="B/C")`{{execute}}

`match(regex=".{3}", str="B/C")`{{execute}}

`match(regex="H.{3}O", str="HELLO")`{{execute}}

A common operation you may see is `.*`, which allows 0 or more repetitions of any character. This is often used to match any text, making it function as an “anything” wildcard. This can be helpful when using regular expressions as business rules, and if you do not want that parameter just make it a `.*`.

`match(regex=".*", str="AsdfSJDFJSVdsfBLKJXCasdBNVJWB$TJ$@#ASDFSD@")`{{execute}}

`match(regex=".*", str="Alpha")`{{execute}}

Note also it will match an empty string. 

`match(regex="", str="Alpha")`{{execute}}

One thing to note carefully is that when the `.` is inside a character range `[]`, it literally is treated as a dot character and does not function as a wildcard. 

`match(regex="([0-9.]+", str="172.18.83.245")`{{execute}}