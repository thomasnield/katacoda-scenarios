
The Monty Hall Problem is a great way to appreciate how nuanced probability can be. When it first received mainstream attention in the 1990's, it baffled even mathematicians and experts. 

Here is a description of this brain teaser: you are on a game show standing in front of 3 closed doors, and behind one of them is a prize. You choose a door, but there is a twist. The game show host now opens one of the other doors, and offers you the opportunity to switch to the other unopened door. 

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

Feel free to play a few games by running the above command. Do you think switching doors makes a difference in your chances of winning? 

When you are ready to continue, we will explore this question further. 
