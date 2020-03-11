# sudo apt-get update 
# sudo apt-get -y install python 3.3.8
# sudo apt-get -y install python3-pip


echo "
import re
def regex_match(regex, str):
    result = re.fullmatch(pattern=regex, string=str)
    if result:
        return 'MATCH'
    else:
        return 'NO MATCH'

def regex_findall(regex, str):
    return re.findall(regex, str, re.MULTILINE)" >> regex_helper.py
		
		
python3

from regex_helper import regex_match, regex_findall

import os
os.system('clear')