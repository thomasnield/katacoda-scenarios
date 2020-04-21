In this set of exercises, we are going to learn how to filter records using SQL, particularly on numerical and boolean (true/false) fields. 

We are going to use the `weather_stations.db` database file in SQLite, and there is only one table called `STATION_DATA`. It has 28,000 records containing weather measurement data. There are a lot of records, so let's limit our queries to 10 records so we don't flood our console: 

```
SELECT * FROM STATION_DATA LIMIT 10;
```{{execute}}

If your computer screen is too small to display each record on one line and it is making the output messy, you can condense outputs in "list mode" by running this command: 

```
.mode list 
```{{execute}}

To do any kind of productive analysis, we are going to have to find a way to navigate all these records. Let's start with the `WHERE` clause, which allows us to return records that meet a condtion. 

For example, we can get all records for the year 2010 using the equality operator `=`. 

```
SELECT * FROM STATION_DATA WHERE year = 2010 LIMIT 10;
```{{execute}} 


If you come from a programming or scripting background, the familiar double equals `==` should also work. 

Conversely, you can also use an inequality operator `!=` to find records that DO NOT meet a condition. Below, we find records that are not the year 2010:

```
SELECT * FROM STATION_DATA WHERE year != 2010 LIMIT 10;
```{{execute}} 

Inequality can also be checked with the diamond operator `<>`, which is an alternative symbol to express `!=`. 

We can also specify inclusive ranges using the `BETWEEN` operator. Below, we search for all records between 2005 and 2010 (including 2005 and 2010). 

```
SELECT * FROM STATION_DATA WHERE year BETWEEN 2005 AND 2010 LIMIT 10;
```{{execute}} 


The `BETWEEN` operator works for most data types that have a consecutive nature including dates, times, numbers, and even text which uses alphanumeric ordering. 


