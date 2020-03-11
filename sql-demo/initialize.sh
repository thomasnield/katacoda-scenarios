
curl -L https://github.com/thomasnield/oreilly_intermediate_sql_for_data/blob/master/thunderbird_manufacturing.db?raw=true >> thunderbird_manufacturing.db

curl -L https://sqlite.org/2020/sqlite-tools-linux-x86-3310100.zip >> sqlite.zip

# apt-get -qq --yes --force-yes install sqlite3

unzip sqlite.zip 

sudo cp -v sqlite-tools-linux-x86-3210000/sqlite3 /usr/bin/

apt-get -qq update && apt-get -qq --yes --force-yes install sqlite3 && apt-get install sqlite3-pcre && ./sqlite3 -column -header "thunderbird_manufacturing.db" && .load "/usr/lib/sqlite3/pcre.so"

cp -v sqlite-tools-linux-x86-3310100/sqlite3 /usr/bin/