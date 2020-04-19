


In regular expressions, alphanumeric characters (letters A-Z and numbers 0-9) are treated as **literals**. This means they literally represent those characters and do not have any special functionality tied to them. For example, a regular expression of `TX` will only match a string "TX". 

`match(regex="TX", str="TX")`{{execute}}

`match(regex="TX", str="AZ")`{{execute}}

However, there is a special set of characters (called **metacharacters**) that have special functionality tied to them. These characters include the following: 

`[]\^$.|?*+()`

We will learn about these functionalities in this and other scenarios. If you want to use any of these characters as literals, you will need to escape them by preceding with a `\`. For example, to match a string of "$180" you will need a regular expression of `\$180`. 

`match(regex="\$180", str="$180")`{{execute}}

Note we can also do a match simply by using a single space: 

`match(regex="Lorem Ipsum", str="Lorem Ipsum")`{{execute}}


Puting a `\` in front of an alphabetic character can yield a special character literal. For example, `\s` can be used to match any whitespace including tabs, newlines, and carriage returns. 

`match(regex="Lorem\sIpsum", str="Lorem Ipsum")`{{execute}}


We will learn about these special literals enabled by the `\` in this and other modules. But here are some that might come in handy: 

|Regex|Description|
|---|---|
| | A single blank space " " can be used to match a space|
|\s|Matches whitespace including tabs, newlines, carriage returns|
|\S|Matches non-whitespace characters|
|\w|Matches a word character|
|\W|Matches a non-word character|


