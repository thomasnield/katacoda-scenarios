
curl -L  https://gist.githubusercontent.com/thomasnield/95897f86e7495d33173b08f7cfe20a38/raw/62a5ce5596f91fe02cc436cac6b4909e4670bc04/regex_helper.py >> regex_helper.py

curl -L https://gist.githubusercontent.com/thomasnield/1dc923d2ee32d82ae317fc9be7607fba/raw/953c435b6ad01aa74993ba39662d48960511fa64/flights_broken.txt >> flights_broken.txt 

python3

from regex_helper import match, findall, split

import os
os.system('clear')
