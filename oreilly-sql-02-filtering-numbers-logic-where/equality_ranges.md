In this set of exercises, we are going to learn how to filter records using SQL, particularly on numerical and boolean (true/false) fields. 

We are going to use the `weather_stations.db` database file in SQLite, and there is only one table called `STATION_DATA`. It has 28,000 records containing weather measurement data. 

```
SELECT COUNT(*) FROM STATION_DATA;
```{{execute}} 

To do any kind of productive analysis, we are going to have to find a way to navigate all these records. Let's start with the `WHERE` clause, which allows us to return records that meet a condtion. 

For example, we can get all records for the year 2010 using the equality operator `=`. 

```
SELECT * FROM STATION_DATA WHERE year = 2010;
```{{execute}} 

It can be a bit overwhelming to view all records in the console, so let's slap on a `LIMIT 10` just to sample a few records: 

```
SELECT * FROM STATION_DATA WHERE year = 2010 LIMIT 10;
```{{execute}} 

If you come from a programming or scripting background, the familiar double equals `==` should also work. 

Conversely, you can also use an inequality operator `!=` to find records that DO NOT meet a condition. Below, we find records that are not the year 2010 

```
SELECT * FROM STATION_DATA WHERE year != 2010 LIMIT 10;
```{{execute}} 

We can also specify inclusive ranges using the `BETWEEN` operator. Below, we search for all records between 2005 and 2010 (including 2005 and 2010). 

```
SELECT * FROM STATION_DATA WHERE year BETWEEN 2005 AND 2010;
```{{execute}} 


The `BETWEEN` operator works for most data types that have a consecutive nature including dates, times, numbers, and even text which uses alphanumeric ordering. 


