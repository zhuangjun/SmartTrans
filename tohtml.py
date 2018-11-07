import json
import urllib.request as urlreq

apiKey = "vTz1MLzLOcCbwLNy9Qkw9ydyOzRqjNgpjIHbWQCC"
articleUrl = "https://trackchanges.postlight.com/building-awesome-cms-f034344d8ed"
req = urlreq.Request("https://mercury.postlight.com/parser?url="+articleUrl)
req.add_header('x-api-key', apiKey)
response = urlreq.urlopen(req).read().decode('utf-8')
responsejson = json.loads(response)
# print(json.dumps(responsejson, sort_keys=True, indent=4, separators=(',', ': ')))
print(responsejson["author"])
print(responsejson["content"])
print(responsejson["date_published"])
print(responsejson["url"])
print(responsejson["word_count"])

# curl -H "x-api-key: vTz1MLzLOcCbwLNy9Qkw9ydyOzRqjNgpjIHbWQCC" "https://mercury.postlight.com/parser?url=https://trackchanges.postlight.com/building-awesome-cms-f034344d8ed"