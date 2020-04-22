
Hopefully the concept of **probability** is familiar, which measures how likely and outcome is and typically is represented as a number `P(X)` between 0.0 and 1.0. A single probability on its own is also known as a **marginal probability**. 

If we have a 60% belief an event will happen (such as a product being defective), it would be expressed as 0.6. We may have this belief because out of 10 products we sampled, 6 were defective. Because all outcomes of an event must add up to 100%, or 1.0, the probability of an event not occuring is `1.0 - P(X)`.

<pre class="file" data-filename="probability_math.py" data-target="replace">

defective_count = 6.0
total_count = 10.0

defective_probability = defective_count / total_count
</pre>

Probabilities have many uses in data science, statistics, machine learning, and many other disciplines. A fun way to use probabilities is to create simulations. For example, here is a simple simulation that does 100 weighted coin flips with a .6 probability for heads: 

<pre class="file" data-filename="probability_math.py" data-target="replace">
import random

heads = 0

for i in range(0,100):
	if random.uniform(0,1) <= .6:
		heads += 1 

print("# HEADS: {}/100".format(heads))
</pre>

`python3 probability_math.py`{{execute}}

You could also use this to simulate defective products coming off an assembly line, and mix it with other random variables in a simulation.

Another way to represent probablity is as an **odds ratio**. Rather than represent probability on a scale between 0.0 and 1.0, we represent it as a factor of how many times we believe something to be true over not being true.

We can represent the defect example as an odds ratio, where we represent a ratio of `defective count/non-defective count` as `6.0 / 4.0`. This simplifies to `1.5` which means that we believe a product is 1.5 times more likely to be defective than not be defective. 

<pre class="file" data-filename="monty_hall.py" data-target="replace">
defective_product_count = 6.0
non_defective_product_count = 4.0
defective_odds = defective_product_count / non_defective_product_count
print(defective_odds)
</pre>

`python3 probability_math.py`{{execute}}

Representing odds can be helpful alternative way to express probabilities. To convert an odds `O(X)` to a probability `P(X)`, you can use this formula: 

```
P(X) = O(X) / (1.0 + O(X))
```

This means we can convert our defect odds of `1.5` back to a probabilty of `.6` as shown below: 

<pre class="file" data-filename="probability_math.py" data-target="replace">

def odds_to_prob(odds):
	return odds / (1.0 + odds)
	
defective_odds = 1.5
defective_probability = odds_to_prob(defective_odds)
print(defective_probability)
</pre>

`python3 probability_math.py`{{execute}}
