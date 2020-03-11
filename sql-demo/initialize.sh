curl -L https://github.com/thomasnield/oreilly_intermediate_sql_for_data/blob/master/thunderbird_manufacturing.db?raw=true >> thunderbird_manufacturing.db

apt-get update 
apt-get install -y sqlite3

sqlite3

attach "thunderbird_manufacturing.db" as thunderbird_manufacturing;