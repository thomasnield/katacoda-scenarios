import re

def regex_match(regex, str):
    result = re.fullmatch(pattern=regex, string=str)
    if result:
        return "match"
    else:
        return "Doesn't match"