
curl -L  https://gist.githubusercontent.com/thomasnield/95897f86e7495d33173b08f7cfe20a38/raw/62a5ce5596f91fe02cc436cac6b4909e4670bc04/regex_helper.py >> regex_helper.py

curl -L https://gist.githubusercontent.com/thomasnield/0b8816d707edf7efe5dc7c20f6e60729/raw/f517f501a0ffb2fb70fe72b3e8e9468f0c8117e8/flights.txt >> flights.txt 

python3

from regex_helper import match, findall, split

import os
os.system('clear')
