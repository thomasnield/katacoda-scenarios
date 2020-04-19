# sudo apt-get update 
# sudo apt-get -y install python 3.3.8
# sudo apt-get -y install python3-pip


echo "
import re


def match(regex, str):
    result = re.fullmatch(pattern=regex, string=str)
    if result:
        return 'MATCH'
    else:
        return 'NO MATCH'" >> regex_helper.py


python3

from regex_helper import match

import os
os.system('clear')
