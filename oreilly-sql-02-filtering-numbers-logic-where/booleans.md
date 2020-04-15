In database land, we typically represent true/false values (called booleans) as 1 and 0 respectively. In many ways they work just like numbers, but they have a few special abilities.

If I want to find all records where tornado and hail were present, I just qualify both of those values being "1":


<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT * FROM station_data
WHERE tornado = 1 AND hail = 1;
</pre>

`.read my_query.sql`{{execute}}

If you want to qualify records where tornado is true and hail is false, set hail equal to "0". However, you will find no records come back meaning that whenever there was a tornado, there was also hail: 

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT * FROM station_data
WHERE tornado = 1 AND hail = 0;
</pre>

`.read my_query.sql`{{execute}}

The `WHERE` condition itself actually boils down to a true (1) or false (0), and we can simply qualify tornado and hail implicitly being true without the `= 1` equality check: 

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT * FROM station_data
WHERE tornado AND hail;
</pre>

`.read my_query.sql`{{execute}}

But if you want to negate one of the conditions being false, you have to use `= 0`, `= false`, or the `NOT` keyword. Generally, using the `NOT` keyword is not recommended as it easily gets mangled with more complex boolean expressions. Prefer using `= 1` or `= 0`:  

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT * FROM station_data
WHERE tornado AND NOT hail;
</pre>

`.read my_query.sql`{{execute}}

You can also choose to use the keywords `true` and `false`, which will implicitly be converted to `1` and `0` respectively:  

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT * FROM station_data
WHERE tornado = true AND hail = false;
</pre>

`.read my_query.sql`{{execute}}

However, it is recommended to use `= 0` and `= 1` to qualify booleans as this is conventionally what most SQL developers do.


