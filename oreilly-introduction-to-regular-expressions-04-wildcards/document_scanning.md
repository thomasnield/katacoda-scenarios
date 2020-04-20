
You should strive to keep usage of the wildcard dot operator `.` to a minimum, as you should prefer specifity over broad matching. However, wildcards are helpful when you are trying to parse documents. In documents, there is often a lot of text we are not interested in and we want to disregard it in our qualification.

Take our `flights.txt` file below: 


```
AS ABQ DAL 12:35 13:45 180
NK PHX HOU 14:15 16:45 190
AA MDW JFK 12:45 14:35 180
```

Let's say we want to find all records that depart on the 12th hour (in column 4) and originated in ABQ (in column 2). We can do that using the regular expression `^.*ABQ [A-Z]{3} 12.*$`: 

`findall(regex="^.*ABQ [A-Z]{3} 12.*$", file="flights.txt")`

We qualify the start `^` and end `$` of a line, and we use the `.*` to disregard parts of the record we do not care about. However, we do qualify `ABQ [A-Z]{3}` to make sure we only capture `ABQ` if it is in column 4, the originating airport column, by qualifying the destination column which is matched with `[A-Z]{3}`. 

As you can see, we make our regular expressions *just specific* enough to find what we are looking for. 