apt-get -qq update && apt-get -qq --yes --force-yes install sqlite3

curl -L https://github.com/thomasnield/oreilly_intermediate_sql_for_data/blob/master/thunderbird_manufacturing.db?raw=true >> thunderbird_manufacturing.db

sqlite3

.headers on

attach "thunderbird_manufacturing.db" as thunderbird_manufacturing;