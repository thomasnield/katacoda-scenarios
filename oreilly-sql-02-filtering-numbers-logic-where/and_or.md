It is common to specify more than one condition. To specify multiple conditions that must be true, combine them by putting an `AND` between each one. We can actually express an inclusive range by specifying two conditions with `AND`. Below we again check for years between 2005 and 2010 inclusively, but using comparative `>=` and `<=` operators:

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT * FROM station_data 
WHERE year >= 2005 AND year <= 2010
LIMIT 10;
</pre>

Since it is more readable to express this as multiple lines into a SQL file, let's copy the above script and then run it with the command below: 

`.read my_query.sql`{{execute}}


We can also make the range exclusive using `>` and `<`, which will include all years between 2005 and 2010, but exclude 2005 and 2010: 


<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT * FROM station_data 
WHERE year > 2005 AND year < 2010
LIMIT 10;
</pre>

`.read my_query.sql`{{execute}}


The `OR` operator allows us to express multiple conditions but specify that at least one of them must be true (not all). Below we find all records where the quarter month is 3, 6, 9, or 12: 

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT * FROM station_data
WHERE MONTH = 3
OR MONTH = 6
OR MONTH = 9
OR MONTH = 12
LIMIT 10;
</pre>

`.read my_query.sql`{{execute}}



When we want to simply validate a field against a set of values like above, it can require much less code to use the `IN` operator. We can check if the `MONTH` is in a set of provided values:

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT * FROM station_data
WHERE MONTH IN (3,6,9,12)
LIMIT 10;
</pre>

`.read my_query.sql`{{execute}}


Conversely, we can negate any condition using the `NOT` keyword. If we put it before the `IN` operator, it will find all months that are not 3, 6, 9, or 12. 



<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT * FROM station_data
WHERE MONTH NOT IN (3,6,9,12)
LIMIT 10;
</pre>

`.read my_query.sql`{{execute}}
