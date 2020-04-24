To get some intuition behind this, it is first best to show that something is off with our assumptions. Just because we hear "85% of violent criminals are likely to have played violent video games", does not mean 85% of gamers are violent criminals. 

Let's look at something. Run the Python code below: 

<pre class="file" data-filename="bayes_theorem.py" data-target="replace">
population = 100_000.0

p_gamer_given_homicidal = .85
p_gamer = .19
p_homicidal = .0001

gamers_ct = population * p_gamer
homicidal_criminals_ct = population * p_homicidal
gamers_and_homicidal_ct = homicidal_criminals_ct * p_gamer_given_homicidal

print("#Gamers: {}".format(gamers_ct))
print("#Homicidal Criminals: {}".format(homicidal_criminals_ct))
print("#Gamers who are homicidal criminals: {}".format(gamers_and_homicidal_ct))
</pre>

`python3 bayes_theorem.py`{{execute}}

What we did is some simple math with a population of 100,000 people. If 19% of the population plays violent video games, then that is 19,000 people. But if .01% of the population is homicidal, then that means only 10 are homicidal criminals. **Of those 10 homicidal criminals, only 8.5 are video gamers.** See what happened there? 

**Are we really going to go after those 19,000 video gamers? Even though only 8 or 9 of them are homicidal criminals**. 

You might be thinking "well, of course! This is basic math." But notice how something in plain sight gets lost in percentages, and that percentage is relative to one group and can be very different relative to another group. 

**What we effectively have done is take an uncommon attribute (being homicidal) and associated it with a common one (playing video games)**. 

So how does this trace back to Bayes Theorem? Let's modify our code below to calculate the percentage of the gamer population that are homicidal:

<pre class="file" data-filename="bayes_theorem.py" data-target="replace">
population = 100_000.0

p_gamer_given_homicidal = .85
p_gamer = .19
p_homicidal = .0001

gamers_ct = population * p_gamer
homicidal_criminals_ct = population * p_homicidal
gamers_and_homicidal_ct = homicidal_criminals_ct * p_gamer_given_homicidal

p_homicidal_given_gamer = gamers_and_homicidal_ct / gamers_ct

print("Probability of homicidal given gamer: {}".format(p_homicidal_given_gamer))
</pre>

`python3 bayes_theorem.py`{{execute}}


For such simple math, there are so many nuances here! Notice the relationship between joint probabilities and conditional probabilities, and how they are really just based on sub-groups in the population. Let's dive into this next.