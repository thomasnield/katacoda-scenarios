
The most fundamental task in SQL (structured query language) is the `SELECT` operator which allows us to retrieve data. We are going to use a `rexon_metals` database which has 3 tables: `CUSTOMER`, `CUSTOMER_ORDER`, and `PRODUCT`. 

Hopefully a table is a familiar concept. It has rows and columns much like a spreadsheet, but has a defined structure and is more efficient. To view all columns and all records from the `CUSTOMER` table, execute the folling SQL command. 

`SELECT * FROM CUSTOMER;`{{execute}}

Notice that the `SELECT` allows us to retrieve one or more columns `FROM` the `CUSTOMER` table, and the `*` simply specifies to retrieve all columns.

When we are trying to sample data from a table, we can use the `LIMIT` command to only sample a few rows. Below we can limit the returned results to just 2 records: 

`SELECT * FROM CUSTOMER LIMIT 2;`{{execute}}


Note you can also retrieve specific columns, which not only reduces our focus to columns of interest, but it can reduce the amount of data that needs to be returned which speeds performance up. Below we retrieve only two fields : `CUSTOMER_ID` and `NAME`: 

`SELECT CUSTOMER_ID, NAME FROM CUSTOMER;`{{execute}}
