
We are going to use Python to learn about regular expression anchoring. To streamline the experience a little bit, we got a few helper functions put into a `regex_helper.py` file to the right. Feel free to open and view it if you are curious. 

Now let's test a regular expression to see if the `match()` function works: 

`match(regex="[A-Z][A-Z]", str="TX")`{{execute}}

The first argument `regex` is our regular expression, and the second argument `str` is the string we are matching against. The function will return either `MATCH` or `NO MATCH`. 

We will also be searching a file `recipe.txt` which contains a recipe for French Macaroons: 

```
French Macaroons (24 servings)

6 egg whites
1 cups white sugar
2 cups of powdered sugar
2 cups of almond flour

Beat eggs in bowl and then add sugar.

Let sit for 2 minutes and continue beating
```

We will use the `findall()` function to search the document, which will return partial matches. 


Alright, let's get started!