
We are going to use Python to learn about regular expression groups and alternators. To streamline the experience a little bit, we got a few helper functions put into a `regex_helper.py` file to the right. Feel free to open and view it if you are curious. 

Now let's test a regular expression to see if the `match()` function works: 

`match(regex="[A-Z][A-Z]", str="TX")`{{execute}}

The first argument `regex` is our regular expression, and the second argument `str` is the string we are matching against. The function will return either `MATCH` or `NO MATCH`. 

We will also be searching a file `flights_broken.txt` which contains five flight records. 

```
AS ABQ DAL 12:35 13:45 180
AS BOS BOS 12:35 13:45 180
NK PHX HOU 14:15 16:45 190
AA MDW JFK 12:45 14:35 180
DL ATL ATL 06:05 12:05 190
```

We will use the `findall()` function to search the document, which will return partial matches. Below, we find all airport codes by finding 3 uppercase alphabetic character sequences:

`findall(regex='[A-Z]{3}', file='flights.txt')`{{execute}}



Alright, let's get started!