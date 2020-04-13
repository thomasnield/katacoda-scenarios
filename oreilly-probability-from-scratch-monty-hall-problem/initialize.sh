# sudo apt-get update 
# sudo apt-get -y install python 3.3.8
# sudo apt-get -y install python3-pip

echo " 
import random

number_doors = 3
door_with_prize = random.randint(1,3)

chosen_door = int(input(\"There are 3 doors, one with a prize. Choose a door 1, 2, 3:\n\"))
opened_door = random.choice([i for i in range(1, 4) if i != chosen_door])

switch = input(\"You chose door {0}, but door {1} was opened. Do you want to switch? y/n\n\".format(chosen_door, opened_door))

if switch == \"y\":
    chosen_door = [i for i in range(1, 4) if i != chosen_door and i != opened_door][0]

if chosen_door == door_with_prize:
    print(\"You win a prize!\")
else:
    print(\"Sorry, no prize\")

" >> monty_hall_interactive.py
