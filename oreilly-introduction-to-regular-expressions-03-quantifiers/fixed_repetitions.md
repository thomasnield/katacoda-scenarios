A critical feature of regular expressions is quantifiers, which repeat the preceding clause of a regular expression.

For instance, it is a bit redundant to express [A-Z] three times to match three uppercase letters.

`match(regex="[A-Z][A-Z][A-Z]", str="YCA")`{{execute}}

Instead, we can follow the `[A-Z]` with a quantifier `{3}` to specify repeating that character range three times, as in `[A-Z]{3}`. This accomplishes the same task as `[A-Z][A-Z][A-Z]`, but more succinctly expresses it as three repetitions.

`match(regex="[A-Z]{3}", str="YCA")`{{execute}}

We can use the regular expression below to match a 10-digit phone number with dashes (and not zip codes or other numbers) as shown below: 

`match(regex="[0-9]{3}-[0-9]{3}-[0-9]{4}", str="470-127-7501")`{{execute}}

`match(regex="[0-9]{3}-[0-9]{3}-[0-9]{4}", str="75663-2372")`{{execute}}