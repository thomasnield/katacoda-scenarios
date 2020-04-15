According to our Monte Carlo simulations (which had similiar outcomes in real-life trials), switching seems to give us 66.66% probability of winning while staying keeps our probability the same at 33.33%. How exactly is this happening? 

Think of it this way. When we first chose a door, our probability of winning the prize was 33.33%. When another door is opened, does it change the prize probability of the door we just selected? Or did probability shift between the other two doors? The game show host knows which door has the prize and is not going to open it, so something subtle has happened here. 

The best mathematical explanation for what happened is Bayes Theorem, which is a clever formula that allows us to flip a conditional probability:

```
P(A|B) = P(B|A) * P(A) / P(B) 

P(A): Probability of A
P(B): Probability of B
P(A|B): Probability of A given B 
P(B|A): Probability of B given A
```

Let's say we chose **Door 1** and then **Door 3** was opened, and we are contemplating whether to switch to **Door 2**. We know for sure the probability of the door we chose was 33.33%. Not knowing which door has the prize, the probability the host will leave door 2 closed is 50% (since there are two doors for him to choose from). However, the probability the game show host will leave door 2 closed given it has the prize is 100%, because he is not going to open the door that has the prize! 

Let's plug these values into Bayes Theorem, and copy this code to the editor: 


<pre class="file" data-filename="monty_hall.py" data-target="replace">

p_prize2 = 1.0 / 3.0    # probability of prize in door 2
p_left2_prize2 = 1.0    # probability of door 2 left given prize in door 2
p_left2 = .5            # probability of door 2 being left 

# probability of prize in door 2 given door 2 is left
p_prize2_left2 = p_left2_prize2 * p_prize2 / p_left2

print(p_prize2_left2)
</pre>

Go ahead and execute it, and you will see the probability of **Door 2** having the prize is %66.66. 

```
python3 monty_hall.py
```{{execute}}

Conversely, if we stay with **Door 1** and stick with our theory it holds the prize, then we also believe the two other doors are empty. The game show host will pick either door 50%/50%, and be impartial to either because neither have the prize. 


<pre class="file" data-filename="monty_hall.py" data-target="replace">
p_prize1 = 1.0 / 3.0    # probability of prize in door 1
p_left2_prize1 = .5     # probability of door 2 left given prize in door 1
p_left2 = .5            # probability of door 2 being left

# probability of prize in door 1 given door 2 is left
p_prize1_left2 = p_left2_prize1 * p_prize1 / p_left2

print(p_prize1_left2)
</pre>

When you execute this, you will find that the probabilty of the prize being in **Door 1** given **Door 2** is left is 33.33%. So yes, you should get off of **Door1** and switch to **Door 2**!

```
python3 monty_hall.py
```{{execute}}

If you are still trying to wrap your head around this, we will try one more example. 