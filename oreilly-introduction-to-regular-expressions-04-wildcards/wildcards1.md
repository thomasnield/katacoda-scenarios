A dot `.` is a wildcard for any character, making it the broadest operator you can use. It will match not just alphabetic or numeric characters, but also whitespaces, newlines, punctuation, and any other symbols. This means you should use it wisely, as it is often better to be specific. 

`match(regex="...", str="B/C")`{{execute}}

`match(regex=".{3}", str="B/C")`{{execute}}

`match(regex="H.{3}O", str="HELLO")`{{execute}}



One thing to note carefully is like many metacharacters, the `.` inside a character range `[]` is treated as a literal and does not function as a wildcard. 

`match(regex="([0-9.]+", str="172.18.83.245")`{{execute}}