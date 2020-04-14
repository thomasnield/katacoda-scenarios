


curl -L "https://www.sqlite.org/2020/sqlite-amalgamation-3310100.zip" >> sqlite.zip && 
unzip sqlite.zip &&
apt-get -qq update && 
apt-get -qq --yes --force-yes install gcc && 
cd sqlite-amalgamation-3310100 && 
gcc shell.c sqlite3.c -lpthread -ldl -o sqlite3 &&
apt-get -qq --yes --force-yes install sqlite3-pcre && 
mv sqlite3 ../sqlite3 &&
cd .. && curl -L "https://github.com/thomasnield/oreilly_sql_fundamentals_for_data/blob/master/databases/rexon_metals.db?raw=true" >> rexon_metals.db &&
rm -rf sqlite-amalgamation-3310100 &&
rm sqlite.zip && reset &&
./sqlite3 -column -header "rexon_metals.db"	&& .width 22 22 22 22 22 22 22 22 22 22 