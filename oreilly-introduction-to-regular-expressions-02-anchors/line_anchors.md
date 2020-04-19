
For the following examples, we are going to use the `recipe.txt` text file. Feel free to view it on the right. 

Sometimes you will want to qualify the start `^` and end `$` of a line. This can be handy if you are searching a document and only want to identify text patterns that occur at the start of a line. 

For example, you can use this regular expression to match all numbers that start a line in a document as shown here: 

`findall(regex='^[0-9]', file='recipe.txt')`{{execute}}

Conversly, you can use a `$` to qualify the end of the line. Here we look for letters that exist on the end of each line. 

`findall(regex="[A-Za-z]$", file="recipe.txt")`{{execute}}

Note that any lines that ended in punctuation characters like `.` or `)` were not included. The letters on those lines were not the last character so they were not qualified. 