Like most programming and scripting platform, SQL supports PMDAS order of operations (parenthesis, multiplication, division, addition, and then subtraction). That means mathematical expressions will be evaluated in that order. 

Regardless of this default behavior, it is good practice to liberally use paranthesis to make your intent clear and make the code easier to maintain. Here is a broken example where we convert the `temperature` field (which is in Fahrenheit) to Celsius. We then use that derived field to qualify records where it is less than 0: 


<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT station_number, 
report_code, 
temperature AS temperature_fahrenheit,
temperature - 32 * 5.0 / 9.0 AS temperature_celsius 
FROM station_data

WHERE temperature_celsius < 0 

LIMIT 10;
</pre>

`.read my_query.sql`{{execute}}

The above expression `temperature - 32 * 5.0 / 9.0` is incorrect because we need to have `temperature - 32` be evaluated separately before being multiplied with the rest of the expression `5.0 / 9.0`. We can achieve this by grouping `(temperature - 32)` in paranthesis:

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT station_number, 
report_code, 
temperature AS temperature_fahrenheit,
(temperature - 32) * 5.0 / 9.0 AS temperature_celsius 
FROM station_data

WHERE temperature_celsius < 0 

LIMIT 10;
</pre>

`.read my_query.sql`{{execute}}

With boolean logic, the `AND` conditions will be evaluated before the `OR` conditions. However leaning on this rule can create too much confusion with more complex queries that mix `AND` and `OR`, derailing not just people reading the query but also the SQL engine!

For example, here is a query that looks for records that have either sleet or snow: 


<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT * FROM station_data
WHERE rain = 1 AND temperature <= 32 OR snow_depth > 0;
</pre>

`.read my_query.sql`{{execute}}

For sleet to happen, there needs a temperature at most 32 degrees Fahrenheit and rain. We are also interested in cases where snow is present. While the above query technically works thanks to order precedence, it can be confusing to look at as it is hard to determine which conditions belong to the `AND` and which belong to the `OR`. For more complicated queries, mixing `AND` and `OR` like this creates opportunities for mistakes. This problem becomes worse if the query changes hands and gets complicated maintenance over time. 

So the best thing to do is to group up related conditions in paranthesis, which in this case are the sleet conditions `(rain = 1 AND temperature <= 32)`. This way we ensure the sleet conditions are not mangled with the snow conditions, and there is no confusion for either people or the machine which conditions belong to the `AND` versus the `OR`: 

<pre class="file" data-filename="my_query.sql" data-target="replace">
SELECT * FROM station_data
WHERE (rain = 1 AND temperature <= 32) OR snow_depth > 0;
</pre>

`.read my_query.sql`{{execute}}



**Further Resources**

Getting Started with SQL (O'Reilly)
https://learning.oreilly.com/library/view/getting-started-with/9781491938607/

Learning SQL (O'Reilly)
https://learning.oreilly.com/library/view/learning-sql-3rd/9781492057604/

SQL Fundamentals Learning Path (O'Reilly)
https://learning.oreilly.com/learning-paths/learning-path-sql/9781492058076/
