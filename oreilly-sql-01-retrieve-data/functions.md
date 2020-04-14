For a lot of logic, you will likely find yourself using functions in SQL. Functions are named methods that accept arguments and then return a value. 

For example, we can use the `len()` function to return the number of characters on a given text field or value. Below we show the `PRODUCT_ID`, `DESCRIPTION`, and the number of characters in the description: 

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT PRODUCT_ID,
DESCRIPTION,
len(DESCRIPTION) as DESCR_NUM_CHARS
FROM PRODUCT;
</pre>

`.read my_query.sql`{{execute}}

Notice it accepts arguments in paranthesis `( )`, and it is preceded with the name of the function `len`. 

Another common function used is the `round()` function, which rounds a number to a certain number of decimal places. Below we round our `TAXED_PRICE` calculation to two decimal places:

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT PRODUCT_ID,
DESCRIPTION,
PRICE,
round(PRICE * 1.07, 2) AS TAXED_PRICE

FROM PRODUCT;
</pre>

`.read my_query.sql`{{execute}}

The first argument is the value we are rounding, which in this case is the result of `PRICE * 1.07`. The second argument is the number of decimal places to round to, which is `2`. 

Every SQL platform may or may not have certain functions implemented, and might have them named differently. When working with a specific database platform, such as MySQL or Oracle, make sure to research what functions are available. You can view SQLite's core functions here: 

https://sqlite.org/lang_corefunc.html
