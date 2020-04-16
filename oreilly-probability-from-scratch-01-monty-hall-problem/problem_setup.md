
The Monty Hall Problem is a great way to appreciate how nuanced probability can be. When it first received mainstream attention in the 1990's, it even [baffled mathematicians and statisticians much to their chagrin](https://priceonomics.com/the-time-everyone-corrected-the-worlds-smartest/). 

**Here is the brain teaser:**

You are on a game show standing in front of 3 closed doors, and behind one of them is a prize. 

```
 ____   ____   ____
|    | |    | |    |
|   o| |   o| |   o|
|    | |    | |    |
|____| |____| |____|

```

You choose a door and correctly believe you have a 1/3 (33.33% chance) of winning the prize. But here comes the twist: the game show host now opens another door revealing no prize, and offers you the opportunity to switch to the other unopened door. 

Do you switch? You can play the game using this Python code. First, copy it to the editor: 

<pre class="file" data-filename="monty_hall.py" data-target="replace">
import random

number_doors = 3
door_with_prize = random.randint(1,3)

chosen_door = int(input("There are 3 doors, one with a prize. Choose a door 1, 2, 3:\n"))
opened_door = random.choice([i for i in range(1, 4) if i != chosen_door])

switch = input("You chose door {0}, but door {1} was opened. Do you want to switch? y/n\n".format(chosen_door, opened_door))

if switch == "y":
    chosen_door = [i for i in range(1, 4) if i != chosen_door and i != opened_door][0]

if chosen_door == door_with_prize:
    print("You win a prize!")
else:
    print("Sorry, no prize")
</pre>

After copying the file, run it with Python3 and play a game: 

```
python3 monty_hall.py
```{{execute}}

Feel free to play a few games by running the above command. Does switching doors make a difference in our odds of winning the prize? 

Many people believe that since two doors are left (the one you chose and the one you can switch to), the probability is split evenly 50%/50%. But how can we give credibility to this theory? 
