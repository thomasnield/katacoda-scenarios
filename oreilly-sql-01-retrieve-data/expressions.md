
The `SELECT` operation can do a lot more than simply retrieve data. We can also transform data in useful ways before the results are returned. Note this does not modify the table, but rather tansforms the results before they come back. 

For example, I can calculate a `TAXED_PRICE` field on-the-fly simply by expressing `PRICE * 1.07` as a selected field. I give it a name `TAXED_PRICE` using the `AS` keyword. 

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT PRODUCT_ID,
DESCRIPTION,
PRICE,
PRICE * 1.07 AS TAXED_PRICE
FROM PRODUCT;
</pre>


 Note that the SQL above is multiple lines, which can be tedious to write into the shell. So let's copy it to the editor above in a text file called `my_query.sql`. We can then run it with the following command: 

`.read my_query.sql`{{execute}}

We can also rename fields within our query using the `AS` keyword (known as an "alias"). Below we rename the `PRICE` field as `UNTAXED_PRICE`. Again this does not modify the underlying `CUSTOMER` table, but transforms the retrieved data in our query before it is returned. 

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT PRODUCT_ID,
DESCRIPTION,
PRICE AS UNTAXED_PRICE,
PRICE * 1.07 AS TAXED_PRICE
FROM PRODUCT;
</pre>

`.read my_query.sql`{{execute}}

There are a handful of math operators that SQL supports, and these should be supported across all platforms. 

| Symbol | Description            |
|--------|------------------------|
| +      | Adds two numbers                          |
| -      | Subtracts two numbers                     |
| *      | Multiplies two numbers                    |
| /      | Divides two numbers                       |
| %      | Divides two numbers, but returns remainder|
| ( )    | Groups up an expression so it is evaluated first|

However, if you need to do other tasks like exponents and trigonometry you will need to use functions. 