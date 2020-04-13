Does switching doors make a difference in our odds of winning the prize? 

Many people believe that since two doors are left (the one you chose and the one you can switch to), the probability is split evenly 50%/50%. But how can we give credibility to this theory? 

If you ran several games perhaps you can keep track of your wins and losses, and try both staying and switching. Rather than having to do this manually for a tedious number of repetitions, why not have the computer do it? 

We can perform what is called a *monte carlo simulation*, where we simulate an event using random selection. We can have the computer do 10,000 Monty Hall games and have it randomly choose a door with a prize, as well as select a door. Afterwards, we can aggregate the results and see how often staying versus switching will result in a win. 


Load the following code to the editor: 

<pre class="file" data-filename="monty_hall.py" data-target="replace">
from random import randint


def random_door():
    return randint(1, 3)


trial_count = 10000

stay_wins = 0
switch_wins = 0

for i in range(0, trial_count):
    prize_door = random_door()
    selected_door = random_door()
    opened_door = list(d for d in range(1, 4) if d != selected_door and d != prize_door)[0]
    switch_door = list(d for d in range(1, 4) if d != selected_door and d != opened_door)[0]

    if selected_door == prize_door:
        stay_wins += 1

    if switch_door == prize_door:
        switch_wins += 1


print("STAY WIN RATE: {}, SWITCH WIN RATE: {}".format(float(stay_wins)/float(trial_count), float(switch_wins)/float(trial_count)))
</pre>

After copying the code, run it with Python3 to run the Monte Carlo simulation: 

```
python3 monty_hall.py
```{{execute}}

Whoa! Staying seems to win approximately 1/3 of the time, while switching will win 2/3 of the time. Run the command above a few more times, and you will see this outcome is pretty consistent. 
