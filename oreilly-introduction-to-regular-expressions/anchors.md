
For some of the examples here, we are going to use another regular expression function called `regex_findall(regex,str)`. Instead of simply returning a full match, it will return all partial matches that are found in a string. This is helpful for searching longer pieces of texts and documents.  

For example, we can look for all sequences of 3 alphabetic characters in a longer piece of text: 

```
regex_findall(regex="[A-Z][A-Z][A-Z]", str="""
AS ABQ DAL 12:35 13:45 180
NK PHX HOU 14:15 16:45 190
AA MDW JFK 12:45 14:35 180
""")
```{{execute}}

###Line Anchors

Sometimes you will want to qualify the start `^` and end `$` of a line. This can be handy if you are searching a document and only want to identify text patterns that occur at the start of a line. You can use this regular expression to match all numbers that start a line in a document as shown here: 

```
regex_findall(regex="^[0-9]", str="""
French Macaroons (24 servings)

6 egg whites
1 cup white sugar
2 cup of powdered sugar
2 cup of almond flour 

Beat eggs in bowl and then add sugar.

Let sit for 2 minutes and continue... 
""")
```{{execute}}


Pretty cool, right? This can come in handy when using text editors and IDE's to quickly search-and-replace code and documents. 

![Figure 1. Using Atom Editor to search for numbers that start a line.](https://www.oreilly.com/content/wp-content/uploads/sites/2/2019/06/image2-008a2916c3ad8f83b4c6acc098bd1376.png)

Conversly, you can use a `$` to qualify the end of the line. Here we look for letters that exist on the end of each line. 

```
regex_findall(regex="[A-Za-z]$", str="""
French Macaroons (24 servings)

6 egg whites
1 cup white sugar
2 cup of powdered sugar
2 cup of almond flour 

Beat eggs in bowl and then add sugar.

Let sit for 2 minutes and continue
""")
```{{execute}}

Note that any lines that ended in punctuation characters like `.` or `)` were not included. The letters on those lines were not the last character so they were not qualified. 

###String Anchors

When we want to qualify the entire start and end of a string, and not just a line, we can use `\A` and `\Z` respectively. If our text is only one line, a line start `^` and end `$` should sufficiently achieve the same effect. But as we saw in multi-line texts, they will qualify each and every line. 

To qualify an alphabetic character that ends a string, we can extract it like this. 

```
regex_findall(regex="[A-Za-z]\Z", str="""
French Macaroons (24 servings)

6 egg whites
1 cup white sugar
2 cup of powdered sugar
2 cup of almond flour 

Beat eggs in bowl and then add sugar.

Let sit for 2 minutes and continue
""")
```{{execute}}

As we can see, the letter "e" is returned. 