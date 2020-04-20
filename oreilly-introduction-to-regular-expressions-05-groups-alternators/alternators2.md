Let's take a look at the `flights.txt` file, which is also printed below: 

```
AS ABQ DAL 12:35 13:45 180
NK PHX HOU 14:15 16:45 190
AA MDW JFK 12:45 14:35 180
```

Let's say we want to find all records where the origin (column 2) is ABQ, MDW, or HOU. We can achieve this easily by using an alternator to find those two strings: 

`findall(regex="^.*(ABQ|MDW|HOU) [A-Z]{3}.*$", file="flights.txt")`

We should only match two records. Now let's say we wanted to find ABQ, MDW, or HOU in either the origin (column 2) or the destination (column 3). This gets a bit trickier but we can use an alternator to achieve this.

`findall(regex="^.*(((ABQ|MDW|HOU) [A-Z]{3}.*$)|([A-Z]{3} (ABQ|MDW|HOU)))", file="flights.txt")`

As you can see above, we qualified two different regular expressions as valid: `((ABQ|MDW|HOU) [A-Z]{3}.*$)` as well as `([A-Z]{3} (ABQ|MDW|HOU))`, which qualifies those three airport codes in either column using `|`. 


