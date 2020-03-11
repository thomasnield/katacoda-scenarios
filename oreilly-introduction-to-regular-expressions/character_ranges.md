
For a given position in a string, we can qualify a range of valid characters. To match a string containing a character of 0, 1, or 3 followed by an F, X, or B, we can declare a regular expression with character ranges inside square brackets [].

`match(regex="[013][FXB]", str="1X")`{{execute}}

`match(regex="[013][FXB]", str="1Z")`{{execute}}

You can also define a consecutive span of letters or numbers by putting a – between them. We can qualify a character that is any number between 1 through 4 followed by any character that is A through Z.

`match(regex="[1-4][A-Z]", str="1X")`{{execute}}

`match(regex="[1-4][A-Z]", str="51")`{{execute}}

You can also qualify multiple ranges on a single character. For instance, we can qualify the first character in a two-character string to be an uppercase letter, a lowercase letter, or a number.

`match(regex="[A-Za-z0-9][0-9]", str="i5")`{{execute}}

`match(regex="[A-Za-z0-9][0-9]", str="1X")`{{execute}}

> Note that some platforms (like Python and Java) have options in their regular expression functions to turn off case sensitivity. This way you can avoid having to qualify both uppercase and lowercase character ranges. 

To negate characters, meaning you want anything but the specified characters, start your character range with a carrot ^. For example, we can qualify non-vowel letters:

`match(regex="[^AEIOU]", str="X")`{{execute}}

`match(regex="[^AEIOU]", str="E")`{{execute}}

If you want a literal dash – character to be part of the character range, declare it first in the range.

`match(regex="[-0-9][0-9]", str="-9")`{{execute}}

`match(regex="[-0-9][0-9]", str="89")`{{execute}}
