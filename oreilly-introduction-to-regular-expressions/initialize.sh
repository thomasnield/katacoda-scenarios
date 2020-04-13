# sudo apt-get update 
# sudo apt-get -y install python 3.3.8
# sudo apt-get -y install python3-pip


echo " 
French Macaroons (24 servings)

6 egg whites
1 cups white sugar
2 cups of powdered sugar
2 cups of almond flour

Beat eggs in bowl and then add sugar.

Let sit for 2 minutes and continue beating
" >> recipe.txt

echo  "
AS ABQ DAL 12:35 13:45 180
NK PHX HOU 14:15 16:45 190
AA MDW JFK 12:45 14:35 180
" >> flights.txt


echo "
import re


def load_file(filepath):
    file = open(filepath, mode='r')
    text = file.read()
    file.close()
    return text


def match(regex, str):
    result = re.fullmatch(pattern=regex, string=str)
    if result:
        return 'MATCH'
    else:
        return 'NO MATCH'


def split(regex, str):
    return re.split(regex, str)


def find(regex, str):
    result = re.findall(regex, str)

    if result:
        return result[0]
    else:
        print('NO MATCH')
        return None


def findall(regex, file):
    return re.findall(regex, load_file(file), re.MULTILINE)" >> regex_helper.py


python3

from regex_helper import match, find, findall, split

import os
os.system('clear')
