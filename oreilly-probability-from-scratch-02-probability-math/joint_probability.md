
Probability gets more interesting and challenging when we think about multiple random variables, each with their probability. Questions emerge on how these probabilities interact with each other. 

Say we have a probability for Event A and Event B occurring simultaneously, which is known as a **joint probability**. This would be expressed in the following ways:

```
P(A and B)
P(A ∩ B)
P(A,B)
```

An example of this would be flipping a quarter and a die, and getting a heads (A) and a six (B). 

If `A` and `B` are completely independent from each other, like the quarter and the die, then calculating the joint probability is as easy as multiplying them together:

<pre class="file" data-filename="probability_math.py" data-target="replace">
prob_A = 1.0 / 2.0 # probabilty of heads
prob_B = 1.0 / 6.0 # probability of six 

prob_A_and_B = prob_A * prob_B 
print(prob_A_and_B)
</pre>

`python3 probability_math.py`{{execute}}

Need some intuition behind this? In the Python below, create all possible combinations of heads/tails and 1/2/3/4/5/6 outcomes. You will see only one outcome is a "head" and a "6", out of 12 possible outcomes, so `1/12 = .083333`.

<pre class="file" data-filename="probability_math.py" data-target="replace">

# Declare possible outcomes for coin and die
coin_outcomes = ["H", "T"]
die_outcomes = [1, 2, 3, 4, 5, 6]

# Combine each outcome between coin and die 
all_combinations = [(c,d) for c in coin_outcomes for d in die_outcomes]

# Find only outcomes for Heads and 6 (should only be one)
head_and_6 = [t for t in all_combinations if t[0] == "H" and t[1] == 6]

# 1/12 = .083333
print(float(len(head_and_6)) / float(len(all_combinations)))
</pre>

`python3 probability_math.py`{{execute}}

The multiplication is just a shortcut to bypass creating this whole tree of outcomes, and multiplying only the outcomes we care about. We will see a lot of permutation and combination logic like this in probability. 

> Obviously, if two events are mutually exclusive and cannot occur at the same time (like getting heads AND a tails on the same flip) they are going to have a joint probability of 0.0. 

If you want to calculate the join probability of more than two probabilities, the same rule applies. If a car fails to start 10% of the time, what is the probability it will fail to start 3 times in a row? Here is how we can calculate that in Python: 

<pre class="file" data-filename="probability_math.py" data-target="replace">
prob_failure = .10

three_fails_prob = prob_failure 

for i in range(0,3):
    three_fails_prob = three_fails_prob * prob_failure

print("Probability of 3 consecutive failures: {}".format(three_fails_prob))

</pre>

`python3 probability_math.py`{{execute}}

We keep accumulating the combinined probability with the next probability in the loop, and do that for 3 iterations. 

A subtle problem can creep in when you start multiplying several decimals together: **floating point underflow**. This means the number can get so small it starts to approach zero and lose track. We can do a clever hack to avoid this by using logarithmic addition as shown below: 

<pre class="file" data-filename="probability_math.py" data-target="replace">
from math import log, exp 

prob_failure = .10
three_fails_prob = log(prob_failure) # convert with log()

for i in range(0,3):
    # Perform logarithmic addition instead of multiplication
    three_fails_prob = three_fails_prob + log(prob_failure)
    
# Use exp() to convert back!
three_fails_prob = exp(three_fails_prob)

print("Probability of 3 consecutive failures: {}".format(three_fails_prob))
</pre>

`python3 probability_math.py`{{execute}}

If you are unfamiliar with logarithms, just know that they allow us to bypass the floating point underflow issue by using addition instead of multiplication. There is no shortage of resources to explain logarithms which are essentially are the reverse of exponents. 

**Resources:**

PatrickJMT - Properties of Logarithms (YouTube)
https://www.youtube.com/watch?v=pP3NunYYhzk

