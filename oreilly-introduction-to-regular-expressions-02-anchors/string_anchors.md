The `^` and `$` anchor the start and end of a line respectively. When you are scanning a multiline string or document, you can anchor the start and end of the entire string/document with `\A` and `\Z`. 

To match the first letter in a document, only if it starts the document, run the code below: 

`findall(regex='\A[A-Za-z]', file='recipe.txt')`{{execute}}

The document starts with the letter "F" so that is what is returned. If the first character was not alphabetic, no return would come back at all. 

You can lso qualify the end of the document or string with `\Z`. To match the last character in a document, only if it is an alphabetic letter, follow the character range with `\Z`: 

`findall(regex='[A-Za-z]\Z', file='recipe.txt')`{{execute}}


