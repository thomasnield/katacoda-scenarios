import re

def regex_match(regex, str):
    result = re.fullmatch(pattern=regex, string=str)
    if result:
        return "MATCH"
    else:
        return "NO MATCH"