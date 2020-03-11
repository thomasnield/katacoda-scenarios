
For some of the examples here, we are going to use another regular expression function called `regex_findall(regex,file)`. Instead of simply returning a full match, it will return all partial matches that are found in a text file. 

For example, say we have a `flights.txt` file with the following contents:

```
AS ABQ DAL 12:35 13:45 180
NK PHX HOU 14:15 16:45 190
AA MDW JFK 12:45 14:35 180
```

We can look for all sequences of 3 alphabetic characters that exist in this text file. 

`regex_findall(regex='[A-Z][A-Z][A-Z]', file='flights.txt')`{{execute}}

Pretty cool, right? This can come in handy when using text editors and IDE's to quickly search-and-replace code and documents. 

For the curious, this function was implemented in Python like this: 

```python
import re

def load_file(filepath):
    file = open(filepath, mode='r')
    text = file.read()
    file.close()
    return text

def regex_findall(regex, file):
    return re.findall(regex, load_file(file), re.MULTILINE)
```

## Line Anchors

For the following examples, we are going to use another text file called `recipes.txt` with the following contents: 

```
French Macaroons (24 servings)

6 egg whites
1 cups white sugar
2 cups of powdered sugar
2 cups of almond flour

Beat eggs in bowl and then add sugar.

Let sit for 2 minutes and continue beating
```

Sometimes you will want to qualify the start `^` and end `$` of a line. This can be handy if you are searching a document and only want to identify text patterns that occur at the start of a line. You can use this regular expression to match all numbers that start a line in a document as shown here: 

`regex_findall(regex='^[0-9]', file='recipe.txt')`{{execute}}

Conversly, you can use a `$` to qualify the end of the line. Here we look for letters that exist on the end of each line. 

`regex_findall(regex="[A-Za-z]$", file="recipe.txt")`{{execute}}

Note that any lines that ended in punctuation characters like `.` or `)` were not included. The letters on those lines were not the last character so they were not qualified. 


## Forcing a Full Match

Depending on your environment, using both the start-of-line `^` and end-of-line `$` together can be helpful to force a full match and ignore partial ones. This is because qualifying the start `^` and end `$` of a line forces everything between them to be the only contents allowed in the input.

For example, we can force a full match of 2 digits and not qualify a partial match that exists in 3 or more digits.

`regex_match(regex="^[0-9][0-9]$", str="23")`{{execute}}

`regex_match(regex="^[0-9][0-9]$", str="237")`{{execute}}


Our `regex_match()` function is configured to do a full match, not a partial one, so in this case it is unnecessary to do anchoring. But if you are ever in doubt, it is a good habit to anchor if you are unsure whether a platform does full or partial matches. This will also make the regular expression more portable. 

