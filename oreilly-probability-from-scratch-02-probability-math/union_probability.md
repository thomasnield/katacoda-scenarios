We just covered joint probability, which is effectively an `AND` operator between two or more probabilities

However, things get a little more nuanced when we deal with **union probability**, which is effectively an `OR` operator for two or more probabilities, and calculating the probability of at least one of the events occuring. This is because the probabilities may or may not be mutually exclusive. 

We typically express union probabilities with the following notations: 

```
P(A or B) = P(A) + P(B)
P(A ∪ B) = P(A) + P(b)
```

**Mutually Exclusive Unions**

Doing an `OR` operation between two or more events that are mutually exclusive is easy. An example of a mutually exclusive event is a die with 6 sides, because only one of the outcomes can occur. We cannot simultaneously get a `2` and a `6` on one die, and the probability of getting both would be 0. If we had two die that would be different and non-mutually exclusive, which we will get to shortly. 

But let's say we want to calculate the probability of a `2` or `6` on a single die roll. This is as simple as adding their probabilities together: 

<pre class="file" data-filename="probability_math.py" data-target="replace">
prob_1 = 1.0 / 6.0
prob_6 = 1.0 / 6.0

prob_1_or_6 = prob_1 + prob+6
print(prob_1_or_6)
</pre>

>Some real-life examples of outcomes that may be mutually exclusive: a rocket test that either succeeds or fails, an image classifier recognizing a dog or cat, or classifying an email as spam or not spam. These outcomes can only be either/or, and cannot occur simultaneously.

**Non-Mutually Exclusive Unions**

Now let's talk about non-mutally exclusive unions. An example of a non-mutually exclusive event is two die rolls, and expecting at least one of the die to meet criteria. Unlike a single die roll, these two die rolls do not cancel out an event of the other die, and both can have outcomes that are independent.

Let's start with a scenario that makes the problem of simply adding non-mutally exclusive events obvious. With two dice, I want to get a number 1 through 4 on at least one of the die: 

<pre class="file" data-filename="probability_math.py" data-target="replace">
prob_roll_1_1to4 = 4.0 / 6.0
prob_roll_2_1to4 = 4.0 / 6.0

prob_1to4_either = prob_roll_1_1to4 + prob_roll_2_1to4
print(prob_1to4_either)
</pre>

`python3 probability_math.py`{{execute}}

Run the code above. Do you see a problem here? You will find that the probability of getting a value 1-4 on at least one of the die is `1.333`, or `133.33%`! This cannot be right as probabilities always have to sum to `1.0`. 

To see what's going on here, let's create another tree of combinations of all outcomes between both dice. Notice that the outcomes where both dice have values 1-4 is being counted twice (once for each die), and inflating the combined probability with the double-counting:

<pre class="file" data-filename="probability_math.py" data-target="replace">

# Declare possible outcomes for both dice
first_roll_outcomes = [1, 2, 3, 4, 5, 6]
second_roll_outcomes = [1, 2, 3, 4, 5, 6]

# Combine each outcome between both dice
all_combinations = [(c,d) for c in second_roll_outcomes for d in first_roll_outcomes]

# Find outcomes where first die is 1-4:
first_is_1_thru_4 = [t for t in all_combinations if t[0] in range(1,5)]

# Find outcomes where second die is 1-4:
second_is_1_thru_4 = [t for t in all_combinations if t[1] in range(1,5)]

# Overlap between both die outcomes: 
overlap = set(first_is_1_thru_4).intersection(set(second_is_1_thru_4))
print("OVERLAP: {}".format(overlap))

# Calculate broken probability
broken_probability_either_1_thru_4 = \
    float(len(first_is_1_thru_4) + len(second_is_1_thru_4)) / len(all_combinations)
    
print("BROKEN PROBABILITY OF EITHER DIE BEING 1-4: {}".format(broken_probability_either_1_thru_4))
</pre>

`python3 probability_math.py`{{execute}}


To fix this, we eliminate the double-counting instances where both die outcomes were the numbers 1-4. You will notice a change in my code below where I subtract the overlap instances where both die are numbers 1-4 `len(first_is_1_thru_4) + len(second_is_1_thru_4) - len(overlap)`:

<pre class="file" data-filename="probability_math.py" data-target="replace">

# Declare possible outcomes for coin and die
first_roll_outcomes = [1, 2, 3, 4, 5, 6]
second_roll_outcomes = [1, 2, 3, 4, 5, 6]

# Combine each outcome between both dice
all_combinations = [(c,d) for c in second_roll_outcomes for d in first_roll_outcomes]

# Find outcomes where first die is 1-4:
first_is_1_thru_4 = [t for t in all_combinations if t[0] in range(1,5)]

# Find outcomes where second die is 1-4:
second_is_1_thru_4 = [t for t in all_combinations if t[1] in range(1,5)]

# Overlap between both die outcomes: 
overlap = set(first_is_1_thru_4).intersection(set(second_is_1_thru_4))
print("OVERLAP: {}".format(overlap))

# Calculate correct probability
correct_probability_either_1_thru_4 = \
    float(len(first_is_1_thru_4) + len(second_is_1_thru_4) - len(overlap)) / len(all_combinations)
    
print("CORRECT PROBABILITY OF EITHER DIE BEING 1-4: {}".format(correct_probability_either_1_thru_4))

</pre>

`python3 probability_math.py`{{execute}}


Without doing all this permutation work, we can calculate this using the **sum rule of probability**, where we can find the `OR` probability between two events by subtracting their `AND` probability from their sum: 

```
P(A or B) = P(A) + P(B) - P(A and B)
```

So to correct our initial calculation, we can do the sum rule to correctly find the probability of either die being numbers 1-4: 

<pre class="file" data-filename="probability_math.py" data-target="replace">
prob_roll_1_1to4 = 4.0 / 6.0
prob_roll_2_1to4 = 4.0 / 6.0

prob_1to4_either = prob_roll_1_1to4 + prob_roll_2_1to4 -
	(prob_roll_1_1to4 * prob_roll_2_1to4)
	
print(prob_1to4_either)
</pre>

`python3 probability_math.py`{{execute}}


In case you have not noticed, this formula `P(A or B) = P(A) + P(B) - P(A and B)` actually applies whether the probabilities are mutually exclusive or not. If the probabilities are mutually exclusive, the probability of both events `P(A and B)` is going to be `0.0`. Therefore, with mutually exclusive events the `P(A and B)` is omitted. 