
Commonly used with grouping is the alternator `|` operator, which essentially functions as an `OR`. 


A simple example of alternation is specifying a set of valid literal strings, like matching only "ALPHA", "BETA", or "GAMMA". 

`match(regex="ALPHA|BETA|GAMMA", str="BETA")`{{execute}}

`match(regex="ALPHA|BETA|GAMMA", str="DELTA")`{{execute}}


 A slightly more complex example is below. I can specify I am looking for 3 digits followed by 3 alphabetic characters. But I can also accept the string "N/A" instead of 3 alphabetic characters. 

`match(regex="[0-9]{3}(([A-Z]{3})|(N/A))", str="473ABQ")`{{execute}}

`match(regex="[0-9]{3}(([A-Z]{3})|(N/A))", str="473N/A")`{{execute}}

It is probably a good idea to use groupings liberally `()` when working with the alternator `|`, so that pieces of the regular expression do not get confused and mangled with different alternate conditions.


Let's take a look at the `flights_broken.txt` file, which for convenenience is printed below: 

```
AS ABQ DAL 12:35 13:45 180
AS BOS BOS 12:35 13:45 180
NK PHX HOU 14:15 16:45 190
AA MDW JFK 12:45 14:35 180
DL ATL ATL 06:05 12:05 190
```

Let's say we want to find all records where the origin (column 2) is ABQ, MDW, or HOU. We can achieve this easily by using an alternator to find those two strings: 

`findall(regex="^(.*(ABQ|MDW|HOU) [A-Z]{3}.*$)", file="flights_broken.txt")`{{execute}}

We should only match two records. Now let's say we wanted to find ABQ, MDW, or HOU in either the origin (column 2) or the destination (column 3). This gets a bit trickier but we can use an alternator to achieve this.

`findall(regex="^.*(((ABQ|MDW|HOU) [A-Z]{3})|([A-Z]{3} (ABQ|MDW|HOU))).*$", file="flights_broken.txt")`{{execute}}

As you can see above, we qualified two different regular expressions as valid: `((ABQ|MDW|HOU) [A-Z]{3}.*$)` as well as `([A-Z]{3} (ABQ|MDW|HOU))`, which qualifies those three airport codes in either column using `|`. 


