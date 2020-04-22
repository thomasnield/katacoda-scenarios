To the untrained person, a common mistake is that conditional probabilities can be flipped and still be equal. It is easy to believe that `P(A given B)` is the same as `P(B given A)`. This is definitely not the case!

Let's review the data we have again for color blindness: 

```
P(color blind) = .045
P(male) = .50
P(female) = .50

P(color blind | male) = .08
P(color blind | female) = .005
```

We will cover Bayes Theorem in more detail in a separate scenario, but we will at least introduce it here. Let's say *we have a patient that is color blind, and we want to know the probability they are female*. Note carefully that this is not the same question as *we have a patient that is female, and we want to know the probability they are color blind*, which we solved on the last page. The ordering of the question matters!

Think about it. If I told you that a patient was female, you are not likely to guess a high probability they have color blindness (which again is 0.5%). Even with a male, you will give them a higher probability (which is 8.0%) but it is still small. But if we are told that the patient is color blind, could not the probabilty that they are male or female be much larger? 

But again, back to the question. What if the only information you have is they are color blind? And you want to find the probability that they are female. Thankfully we can use Bayes Theorem to reverse a conditional probability, which is declared below: 

**Bayes Theorem**

```
P(A|B) = P(B|A) * P(A) / P(B)
```

Let's leverage Bayes Theorem to find out what the probability of being male given they are color blind, as well as female given they are color blind. Run the code below that applies Bayes Theorem: 

<pre class="file" data-filename="probability_math.py" data-target="replace">

p_colorblind = .045
p_male = .5
p_female = .5

p_colorblind_given_male = .08
p_colorblind_given_female = .005

p_male_given_colorblind = p_colorblind_given_male * p_male / p_colorblind
p_female_given_colorblind = p_colorblind_given_female * p_female / p_colorblind

print("P(male given color blind) = {}".format(p_male_given_colorblind))
print("P(female given color blind) = {}".format(p_female_given_colorblind))
</pre>

`python3 probability_math.py`{{execute}}

As we see, the probability of being male given the patient is color blind is 88.88%, and the probability of being female given the patient is color blind is 5.55%. These are very different numbers than 8% and 0.5% respectively, which were the probability of color blindness given male/female. 

We will cover Bayes Theorem in more detail in a separate Katacoda scenario. You can also check out the Monty Hall Problem scenario which also applies Bayes Theorem. 



**Resources:**

Think Bayes (O'Reilly)
https://learning.oreilly.com/library/view/think-bayes/9781491945407/

Bayesian Statistics the Fun Way (No Starch)
https://learning.oreilly.com/library/view/bayesian-statistics-the/9781098122492/

