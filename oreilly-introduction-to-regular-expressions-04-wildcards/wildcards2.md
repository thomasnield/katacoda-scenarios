A common operation you may see is `.*`, which allows 0 or more repetitions of any character. This is often used to match any text, making it function as an “anything” wildcard. This can be helpful when using regular expressions for business rules, and if you do not want that qualifier used just make it a `.*` to match everything.

Below are two examples demonstrating that `.*` will match anything: 

`match(regex=".*", str="AsdfSJDFJSVdsfBLKJXCasdBNVJWB$TJ$@#ASDFSD@")`{{execute}}

`match(regex=".*", str="Alpha")`{{execute}}

Note also it will match an empty string: 

`match(regex=".*", str="")`{{execute}}

If you want to match non-empty strings, you can require a minimum of 1 repetition of a character using `+` or `{1,}`: 

`match(regex=".+", str="Alpha")`{{execute}}

`match(regex=".+", str="")`{{execute}}

One thing to note carefully is like many metacharacters, the `.` inside a character range `[]` is treated as a literal and does not function as a wildcard. 

`match(regex="([0-9.]+", str="172.18.83.245")`{{execute}}