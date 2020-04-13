
The `SELECT` operation can do a lot more than simply retrieve data. We can also transform data in useful ways before the results are returned. Note this does not modify the table, but rather tansforms the results with calculations before being sent back.

For example, I can calculate a `TAXED_PRICE` field on-the-fly simply by expressing `PRICE * 1.07` as a selected field. I give it a name `TAXED_PRICE` using the `AS` keyword. 

Note here that this SQL is multiple lines, which can be tedious to write on the shell. So let's copy it to the editor above in a text file called `my_query.sql`. 

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT PRODUCT_ID,
DESCRIPTION,
PRICE,
PRICE * 1.07 AS TAXED_PRICE
FROM PRODUCT;
</pre>

We can then run the SQL text file with the following command: 

`.open my_query.sql`{{execute}}
