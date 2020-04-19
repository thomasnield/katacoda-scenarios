
We are going to use Python to learn about regular expression anchoring. To streamline the experience a little bit, we got a few helper functions put into a `regex_helper.py` file to the right. Feel free to open and view it if you are curious. 

Now let's test a regular expression to see if the `match()` function works: 

`match(regex="[A-Z][A-Z]", str="TX")`{{execute}}

The first argument `regex` is our regular expression, and the second argument `str` is the string we are matching against. The function will return either `MATCH` or `NO MATCH`. 

We will also be searching two different files for matches, to practice document search operations. The first file `flights.txt` contains three flight records. 

```
AS ABQ DAL 12:35 13:45 180
NK PHX HOU 14:15 16:45 190
AA MDW JFK 12:45 14:35 180
```

The second file `recipes.txt` contains a recipe for French Macaroons: 

```
French Macaroons (24 servings)

6 egg whites
1 cups white sugar
2 cups of powdered sugar
2 cups of almond flour

Beat eggs in bowl and then add sugar.

Let sit for 2 minutes and continue beating
```
For some of the examples here, we are going to use another regular expression function called `findall(regex,file)`. Instead of simply returning a full match, it will return all partial matches that are found in a text file. Below we get all 3-letter airport codes from the `flights.txt` file: 

`findall(regex='[A-Z][A-Z][A-Z]', file='flights.txt')`{{execute}}


Alright, let's get started!