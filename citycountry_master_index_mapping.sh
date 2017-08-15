curl -XDELETE 'localhost:9200/citycountry?pretty'

curl -XPUT 'localhost:9200/citycountry?pretty' -H 'Content-Type: application/json' -d'
{
    "settings" : {
        "analysis": {
            "filter": {
                "autocomplete_filter": { 
                    "type":     "edge_ngram",
                    "min_gram": 1,
                    "max_gram": 20
                }
            },
            "analyzer": {
                "autocomplete": {
                    "type":      "custom",
                    "tokenizer": "standard",
                    "filter": [
                        "lowercase",
                        "autocomplete_filter" 
                    ]
                }
            }
        }
    },
    "mappings" : {
        "citycountry" : {
            "properties" : {
                "countryName": {
					"type": "text",
					"analyzer": "autocomplete",
					"search_analyzer": "standard"
				},
				"subdivision1Name": {
					"type": "text",
					"analyzer": "autocomplete",
					"search_analyzer": "standard"
				},
				"cityName": {
					"type": "text",
					"analyzer": "autocomplete",
					"search_analyzer": "standard"
				}
            }
        }
    }
}
'