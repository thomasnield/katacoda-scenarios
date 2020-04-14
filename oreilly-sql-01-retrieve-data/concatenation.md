There will be times you will want to concatenate, or merge together, several values into a single text string. For many platforms like SQLite, PostgreSQL, and Oracle, you achieve this with the double pipe `||` operator. 

Below, we concatenate the `CITY` and `STATE` fields and put a command and space ` ,` between them: 

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT NAME,
CITY || ', ' || STATE AS LOCATION
FROM CUSTOMER;
</pre>

`.read my_query.sql`{{execute}}

Other platforms like Microsoft SQL Server and MySQL will use a `+` or a `concat()` function instead of `||`. 

Here is a more ambitious example where we concatenate four fields to create a `SHIP_ADDRESS`: 

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT NAME,
STREET_ADDRESS || ' ' || CITY || ', ' || STATE || ' ' || ZIP AS SHIP_ADDRESS
FROM CUSTOMER;

</pre>

`.read my_query.sql`{{execute}}

You can also use concatenation to "format" data with symbols, like adding a dollar sign `$` to a currency amount: 

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT PRODUCT_ID,
DESCRIPTION,
'$' || PRICE AS UNTAXED_PRICE,
'$' || round(PRICE * 1.07, 2) AS TAXED_PRICE
FROM PRODUCT
</pre>

`.read my_query.sql`{{execute}}

**Further Resources**

Getting Started with SQL (O'Reilly)
https://learning.oreilly.com/library/view/getting-started-with/9781491938607/

Learning SQL (O'Reilly)
https://learning.oreilly.com/library/view/learning-sql-3rd/9781492057604/

SQL Fundamentals Learning Path (O'Reilly)
https://learning.oreilly.com/learning-paths/learning-path-sql/9781492058076/
