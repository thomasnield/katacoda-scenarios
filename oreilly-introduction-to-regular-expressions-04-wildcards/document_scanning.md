
You should strive to keep usage of the wildcard dot operator `.` to a minimum, as you should prefer specifity over broad matching. However, wildcards are helpful when you are trying to parse documents. In documents, there is often a lot of text we want to capture but ignore it in our qualification.

Take our `flights.txt` file below: 


```
AS ABQ DAL 12:35 13:45 180
NK PHX HOU 14:15 16:45 190
AA MDW JFK 12:45 14:35 180
```

Let's say we want to find all records that depart on the 12th hour (in column 4) and originated in ABQ (in column 2). We can do that using the regular expression `^.*ABQ [A-Z]{3} 12.*$`: 

`findall(regex="^.*ABQ [A-Z]{3} 12.*$", file="flights.txt")`{{execute}}

We qualify the start `^` and end `$` of a line, and we use the `.*` to disregard parts of the record we want to capture but not qualify. However, we do qualify `ABQ [A-Z]{3}` to make sure we only capture `ABQ` if it is in column 2, the originating airport column, by also qualifying the destination column which is matched with `[A-Z]{3}`. 

As you can see, we make our regular expressions *just specific* enough to find what we are looking for. 


**Resources:**

An Introduction to Regular Expressions: 
https://learning.oreilly.com/library/view/an-introduction-to/9781492082569/

Python Docs:
https://docs.python.org/2/library/re.html

Understanding Regular Expressions (Videos):
https://learning.oreilly.com/videos/understanding-regular-expressions/9781491996300
 
Regex101:
https://regex101.com/
