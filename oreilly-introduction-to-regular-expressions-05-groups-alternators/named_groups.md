For our final example, we will tip our toes into some more advanced grouping constructs. 

Take a look at our `flights_broken.txt` which contains five flight records:

```
AS ABQ DAL 12:35 13:45 180
AS BOS BOS 12:35 13:45 180
NK PHX HOU 14:15 16:45 190
AA MDW JFK 12:45 14:35 180
DL ATL ATL 06:05 12:05 190
```

We discover something broken with this data, where some records have an origin (2nd column) that is the same as the destination (3rd column). These two columns should always be different so we want to find records where this is not the case. How do we do this with a regular expression? 

What gets interesting here is we want to match a pattern, but then *refer* to that match later. This can be achieved using a **named group**. Below, we capture a named group called "orig" that matches 3 uppercase letters, and then search the next column that matches those three letters:

`findall(regex="(?P<orig>[A-Z]{3}) (?P=orig)", file="flights_broken.txt")`{{execute}}

That clause `(?P<orig>[A-Z]{3})` is what defines our named group, and we give it the name "orig". There are some weird and interesting things you can do with groupings (including providing a yes/no pattern alternator), but these become pretty niche and beyond the scope of this scenario.

But you can learn more at the resources below.

**Resources:**

An Introduction to Regular Expressions: 
https://learning.oreilly.com/library/view/an-introduction-to/9781492082569/

Python Docs:
https://docs.python.org/2/library/re.html

Understanding Regular Expressions (Videos):
https://learning.oreilly.com/videos/understanding-regular-expressions/9781491996300
 
Regex101:
https://regex101.com/
