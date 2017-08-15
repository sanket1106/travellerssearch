curl -XPUT 'http://localhost:9200/citycountry' -d '
{
	"mappings": {
		"citycountry": {
			"properties": {
				"_id": {
					"type": "text"
				},
				"countryName": {
					"type": "text",
					"index_analyzer": "autocomplete",
		            "search_analyzer": "whitespace_analyzer",
		            "search_quote_analyzer": "autocomplete",
			     	"fields": {
		                    "raw": {
		                            "type":  "text",
		                            "index_analyzer": "comma"
		                            }
		                 }
				},
				"subdivision1Name": {
					"type": "text",
					"index_analyzer": "autocomplete",
		            "search_analyzer": "whitespace_analyzer",
		            "search_quote_analyzer": "autocomplete",
			     	"fields": {
		                    "raw": {
		                            "type":  "text",
		                            "index_analyzer": "comma"
		                            }
		                 }
				},
				"cityName": {
					"type": "text",
					"index_analyzer": "autocomplete",
		            "search_analyzer": "whitespace_analyzer",
		            "search_quote_analyzer": "autocomplete",
			     	"fields": {
		                    "raw": {
		                            "type":  "text",
		                            "index_analyzer": "comma"
		                            }
		                 }
				}           
			}
		}		
	}
}'
