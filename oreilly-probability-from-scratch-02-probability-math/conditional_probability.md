Another nuanced area of probability we need to address is **conditional probability**, or a probability that occurs given a condition is met. If we have an event "A" given event "B" has occured, we can express typically express it in the following ways:

```
P(A|B)
P(A given B)
```

Males are more prone to color blindness than females. The probability of any random person being color blind is 4.5%. However, a male is 8% likely to be color blind. A female is 0.5% likely to be color blind.

```
P(color blind) = .045
P(color blind | male) = .08
P(color blind | female) = .005
```

*Source: http://www.colourblindawareness.org/colour-blindness/*

As we will learn, there are many interesting and counterinuitive behaviors with conditional probabilities. Let's pick a random person out of the population. There's a 50% chance they are male, and 50% they are female. If we wanted to find the probabilty of this person being male and color blind, it is problematic to multiply these two probabilities together. Can you see why running the code below?

<pre class="file" data-filename="probability_math.py" data-target="replace">

p_colorblind = .045
p_male = .5
p_female = .5

p_colorblind_given_male = .08
p_colorblind_given_female = .005


p_colorblind_and_male = p_colorblind * p_male
p_colorblind_and_female = p_colorblind * p_female

print("P(color blind and male) = {}".format(p_colorblind_and_male))
print("P(color blind and female) = {}".format(p_colorblind_and_female))
</pre>

`python3 probability_math.py`{{execute}}


The probability of being *color blind and male*, `0.0225`, is the same as being *color blind and female*. Notice we naively assumed these two events are independent even though they are not, and the product rule only works if events are independent. We did not incorporate those two conditional probabilities `p_colorblind_given_male` and `p_colorblind_given_female` in our calculations. Should not the probability of a person being *male and color blind* be much higher than *female and color blind*? Yes!

 When we have conditional probabilities between two events `A` and `B`, they are dependent rather than independent. Therefore, we need account for the conditional probability of being *color blind given male* and multiply that instead of probability of being *male*. The same applies for the *female* conditional probability. Here is the corrected code below: 
 
<pre class="file" data-filename="probability_math.py" data-target="replace">

p_colorblind = .045
p_male = .5
p_female = .5

p_colorblind_given_male = .08
p_colorblind_given_female = .005


p_colorblind_and_male = p_colorblind * p_colorblind_given_male
p_colorblind_and_female = p_colorblind * p_colorblind_given_female

print("P(color blind and male) = {}".format(p_colorblind_and_male))
print("P(color blind and female) = {}".format(p_colorblind_and_female))
</pre>

`python3 probability_math.py`{{execute}}

We now get `.0036` for being color blind and male, and `.000225` for being color blind and female. Much more believable! Think long and hard why this makes sense. If we established that our random person is *male*, we already have that condition achieved and then can proceed to multiply the probability of having color blindness *already given that they are male*. This is why conditional probabilities can be powerful as we can chain previously met conditions and use the respective probability given those conditions are met. 

We can update our sum rule and product rules for conditional probabilities like this:

**Conditional/Dependent**

```
P(A and B) = P(A) * P(B given A) 
P(A or B) = P(A) + P(B) - P(A) * P(B given A)
```

**Independent**

```
P(A and B) = P(A) * P(B) 
P(A or B) = P(A) + P(B) - P(A) * P(B)
```

Compare the dependent/independent formulas above. Weirdly, the dependent formulas still work with independent probabilities. With independent probabilities, `P(B given A)` is going to be the same as `P(B)`, as `A` has no impact on `B`. Therefore we can just express `P(B given A)` as `P(B)` when the probabilities are independent.

However, it can be hard in practice to determine if two or events are conditional and related, and therefore it is common in statistics to assume they are independent. We especially see this behavior in machine learning algorithms like Naive Bayes. 



 