sudo apt-get update 
sudo apt-get -y install sqlite3

wget https://github.com/thomasnield/oreilly_intermediate_sql_for_data/blob/master/thunderbird_manufacturing.db?raw=true

sqlite3

attach "thunderbird_manufacturing.db" as thunderbird_manufacturing;