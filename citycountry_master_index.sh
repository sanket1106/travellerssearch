curl -XPUT 'localhost:9200/citycountry?pretty' -H 'Content-Type: application/json' -d'
{
    "settings" : {
        "index" : {
        }
    }
}
'
