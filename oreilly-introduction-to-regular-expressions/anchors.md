
test


```
print(regex_findall("[A-Z]{3}", """
AS ABQ DAL 12:35 13:45 180
NK PHX HOU 14:15 16:45 190
AA MDW JFK 12:45 14:35 180
"""))
```{{execute}}

###Anchors

Sometimes you will want to qualify the start ^ and end $ of a line. This can be handy if you are searching a document and want to qualify the start or end of a line as part of your regular expression. You can use this regular expression to match all numbers that start a line in a document as shown here: 

```
^[0-9]
```

![Figure 1. Using Atom Editor to search for numbers that start a line.](https://www.oreilly.com/content/wp-content/uploads/sites/2/2019/06/image2-008a2916c3ad8f83b4c6acc098bd1376.png)

