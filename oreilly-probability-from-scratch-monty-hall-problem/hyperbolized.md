Still confused? Hyperbolize and it may make sense. Imagine you had 1000 doors, and you chose **Door 19** with terrible odds (1/1000) it has the prize. Then every other door is opened besides **Door 77**. Are you inclined to switch now? 

Hopefully it feels intuitive to switch, and whether it is 3 doors or 1000 doors the transfer of probability is the same. But let's plug into Bayes theorem just to be sure. 

As a recap, here is Bayes Theorem again: 

```
P(A|B) = P(B|A) * P(A) / P(B) 

P(A): Probability of A
P(B): Probability of B
P(A|B): Probability of A given B 
P(B|A): Probability of B given A
```

Let's calculate the probability of **Door 19** having the prize given **Door 77** is left: 


<pre class="file" data-filename="monty_hall.py" data-target="replace">
p_prize19 = 1.0 / 1000.0          # probability of prize in door 19
p_left77_prize19 = 1.0 / 999.0    # probability of door 77 left given prize in door 19
p_left77 = 1.0 / 999.0            # probability of door 77 being left

# probability of prize in door 19 given door 77 is left
p_prize19_left77 = p_left77_prize19 * p_prize19 / p_left77

print(p_prize19_left77)
</pre>

Copy and execute the above code, and you will see the probability of **Door 19** having the prize is a dismal %0.1.

```
python3 monty_hall.py
```{{execute}}

But if we switch to **Door 77**, we are going to get a very different outcome. Copy the code to the editor below: 


<pre class="file" data-filename="monty_hall.py" data-target="replace">

p_prize77 = 1.0 / 1000.0        # probability of prize in door 77
p_left77_prize77 = 1.0          # probability of door 77 left given prize in door 77
p_left77 = 1.0 / 999.0          # probability of door 77 being left

# probability of prize in door 1 given door 2 is left
p_prize77_left77 = p_left77_prize77 * p_prize77 / p_left77

print(p_prize77_left77)
</pre>

When you execute this, you will find that the probabilty of the prize being in **Door 77** given **Door 77** is left is 99.9%. So yes, you should definitely switch! Whether it is 3 doors or 1000 doors, the dynamic is the same, and is why you should always switch.

```
python3 monty_hall.py
```{{execute}}

**Resources:**

Think Bayes (O'Reilly)
https://learning.oreilly.com/library/view/think-bayes/9781491945407/

Bayesian Statistics the Fun Way (No Starch)
https://learning.oreilly.com/library/view/bayesian-statistics-the/9781098122492/

