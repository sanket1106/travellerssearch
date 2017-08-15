curl -XGET 'localhost:9200/citycountry/_analyze?pretty' -H 'Content-Type: application/json' -d'
{
  "analyzer": "autocomplete",
  "text": "quick brown"
}
'


curl -XPOST 'localhost:9200/citycountry/citycountry/_bulk?pretty' -H 'Content-Type: application/json' -d'
{ "index": { "_id": 1            }}
{ "countryName": "India"    }
{ "index": { "_id": 2            }}
{ "countryName": "West Indies" }
'

curl -XPOST 'localhost:9200/citycountry/citycountry/_bulk?pretty' -H 'Content-Type: application/json' -d'
{ "index": { "_id": 3            }}
{ "countryName": "Australia"    }
{ "index": { "_id": 4            }}
{ "countryName": "United States of America" }
'


curl -XGET 'localhost:9200/citycountry/citycountry/_search?pretty' -H 'Content-Type: application/json' -d'
{
    "query": {
        "match": {
            "countryName": "w"
        }
    }
}
'
