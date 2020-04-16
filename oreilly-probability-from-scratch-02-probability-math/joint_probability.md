
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

Obviously, if two events are mutually exclusive and cannot occur at the same time (like getting heads AND a tails on the same flip) they are going to have a joint probability of 0.0. 

If you want to calculate the join probability of more than two probabilities, the same rule applies. If a car fails to start 10% of the time, what is the probability it will fail to start 5 times in a row? 

<pre class="file" data-filename="probability_math.py" data-target="replace">
prob_failure = .10

for i in range(0,5):
	prob_failure = prob_failure * prob_failure

print("Probability of 5 consecutive failures: {}".format(prob_failure))
</pre>

`python3 probability_math.py`{{execute}}
