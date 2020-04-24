Probably the best way to derive Bayes Theorem from our code on the previous page is to expand out every variable in its expression. 

Let's focus on two variables: `gamers_and_homicidal_ct` and `p_homicidal_given_gamer`. If we trace back the steps, we can expand their expressions by replacing their variables with the underlying expressions. Here it is re-expressed in the Python code file: 

<pre class="file" data-filename="bayes_theorem.py" data-target="replace">
population = 100_000.0

p_gamer_given_homicidal = .85
p_gamer = .19
p_homicidal = .0001

gamers_ct = population * p_gamer
homicidal_criminals_ct = population * p_homicidal

#gamers_and_homicidal_ct = homicidal_criminals_ct * p_gamer_given_homicidal
gamers_and_homicidal_ct = population * p_homicidal * p_gamer_given_homicidal

#p_homicidal_given_gamer = gamers_and_homicidal_ct / gamers_ct
p_homicidal_given_gamer = (population * p_homicidal * p_gamer_given_homicidal) / (population * p_gamer)

print("Probability of homicidal given gamer: {}".format(p_homicidal_given_gamer))
</pre>

`python3 bayes_theorem.py`{{execute}}

Let's focus on the `p_homicidal_given_gamer` as this is what we are trying to derive, as it contains the components for Bayes Theorem:

```
p_homicidal_given_gamer = (population * p_homicidal * p_gamer_given_homicidal) / (population * p_gamer)
```

Notice we can completely remove the `population` variable, as it exists in both the numerator and denominator so it cancels out. What we are left with is just the probability variables:

```
p_homicidal_given_gamer = p_homicidal * p_gamer_given_homicidal / p_gamer
```

Do you see it? We now have Bayes Theorem derived as it matches the formula (at least when you flip `P(B|A)` and `P(A)` as multiplication is communicative):  

```
P(A|B) = P(B|A) * P(A) / P(B)
P(Homicidal|Gamer) = P(Gamer|Homicidal) * P(Homicidal) / P(Gamer)
```

So Bayes Theorem is a shortcut to use plain probabilities, and not have to do all this population work. Here it is simplified in Python, removing all population-based variables : 

<pre class="file" data-filename="bayes_theorem.py" data-target="replace">
p_gamer_given_homicidal = .85
p_gamer = .19
p_homicidal = .0001

p_homicidal_given_gamer = p_homicidal * p_gamer_given_homicidal / p_gamer

print("Probability of homicidal given gamer: {}".format(p_homicidal_given_gamer))
</pre>

`python3 bayes_theorem.py`{{execute}}


Now you can see why Bayes Theorem is arguably the most important formula in probability. It allows us to make inferences and flip those inferences as needed. You will find its application critical in many disciplines including medicine, law, business, economics, and anywhere else that touches data and statistics. 

**Resources:**

The Debate Behind Video Game Violence (CNBC)
https://www.youtube.com/watch?v=uaf_Xjz6Mxs

Think Bayes (O'Reilly)
https://learning.oreilly.com/library/view/think-bayes/9781491945407/

Bayesian Statistics the Fun Way (No Starch)
https://learning.oreilly.com/library/view/bayesian-statistics-the/9781098122492/
