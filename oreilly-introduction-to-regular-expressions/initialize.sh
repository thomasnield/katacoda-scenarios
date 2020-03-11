# sudo apt-get update 
# sudo apt-get -y install python 3.3.8
# sudo apt-get -y install python3-pip

python3
import re 
def regex_match(regex, str):
    result = re.fullmatch(pattern=regex, string=str)
    if result:
        return "MATCH"
    else:
        return "NO MATCH"
		

