
curl -L https://github.com/thomasnield/oreilly_intermediate_sql_for_data/blob/master/thunderbird_manufacturing.db?raw=true >> thunderbird_manufacturing.db

apt-get -qq update && apt-get -qq --yes --force-yes install sqlite3 && sqlite3 -column -header "thunderbird_manufacturing.db"