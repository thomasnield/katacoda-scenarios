
curl -L https://github.com/thomasnield/oreilly_intermediate_sql_for_data/blob/master/thunderbird_manufacturing.db?raw=true >> thunderbird_manufacturing.db

curl -L https://www.sqlite.org/2020/sqlite-amalgamation-3310100.zip >> sqlite.zip

unzip sqlite.zip 

apt-get -qq update && apt-get -qq --yes --force-yes install gcc && cd sqlite-amalgamation-3310100 && sh configure && gcc shell.c sqlite3.c -lpthread -ldl && apt-get -qq --yes --force-yes install sqlite3-pcre && ./a.out -column -header "thunderbird_manufacturing.db" && .load "/usr/lib/sqlite3/pcre.so"
