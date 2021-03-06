To discover Bayes Theorem, let's consider the following:

Suppose a research study claims any homicidal criminal is 85% likely to have played violent video games in the United States.

The math stops there for media and politicians, but let's dig deeper into this. Focus on the semantics of the claim: "any homicidal criminal is 85% likely to have played violent video games." Is this supposed to lead us to believe we should blame violent video games for homicidal behavior?

This is important. Between video gaming and homicidal behavior, we need to discern which causes the other in our hypothesis. The question we should be asking "is the probability *a person played violent video games given they are homicidal*, the same as the probability *a person being homicidal given they played violent video games*? " If you think the answer is yes, prepare to be enlightened by Bayes Theorem.

We will reason this out step by step, hopefully making the idea intuitive. But first, let us accept that these are two entirely different probabilities: 

```
P(gamer|homicidal) = .85
P(homicidal|gamer) = ?
```

We will start by simply applying Bayes Theorem, which allows us to flip a conditional probability in the reverse direction. We will dissect why the formula works later, but first let's see how it applies. 


**Bayes Theorem**

```
P(A|B) = P(B|A) * P(A) / P(B)
```

[According to the FBI](https://ucr.fbi.gov/crime-in-the-u.s/2017/crime-in-the-u.s.-2017/tables/expanded-homicide-data-table-3.xls), there are 17,251 homicidal offenders in 2017. [According to Wolfram Alpha](https://www.wolframalpha.com/input/?i=population+of+united+states), there are 324 million people in the United States. 

From these numbers we can easily calculate that .01% of the U.S. population is homicidal. 

<pre class="file" data-filename="bayes_theorem.py" data-target="replace">

p_gamer_given_homicidal = .85
p_homicidal = 17251.0 / 324000000.0

print(p_homicidal)
</pre>

`python3 bayes_theorem.py`{{execute}}


Merging data from various sources, you believe that 19% of the population plays violent video games. 

We now have three pieces of information needed to flip our conditional probability. We can now convert our probability *a person has played violent video games given they are homicidal* to the probability a person is *homicidal given they have played violent video games*. 

First let's work out the match by hand: 

```
P(A|B) = P(B|A) * P(A) / P(B) 
P(Homicidal|Gamer) = P(Gamer|Homicidal) * P(Homicidal) / P(Gamer) 
P(Homicidal|Gamer) = (.85 * .0001) / .19
P(Homicidal|Gamer) = 0.0004
```

We can also do this in Python: 

<pre class="file" data-filename="bayes_theorem.py" data-target="replace">
p_gamer_given_homicidal = .85
p_gamer = .19
p_homicidal = .0001

p_homicidal_given_gamer = p_gamer_given_homicidal * p_homicidal / p_gamer

print("Probability of homicidal given gamer: {}".format(p_homicidal_given_gamer))
</pre>

`python3 bayes_theorem.py`{{execute}}

When you run this, you will see that we get .0004, or .04%, probability that someone is homicidal given they play violent video games. Wow! This is a much different number than 85%, which represents the probability someone plays violent video games given they are homicidal. 

So what has happened here? What is so special about this Bayes Theorem formula? 
