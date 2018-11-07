import json
import urllib.request as urlreq

apiKey = "vTz1MLzLOcCbwLNy9Qkw9ydyOzRqjNgpjIHbWQCC"
articleUrl = "https://trackchanges.postlight.com/building-awesome-cms-f034344d8ed"

def loadhtml(articleUrl):
    req = urlreq.Request("https://mercury.postlight.com/parser?url="+articleUrl)
    req.add_header('x-api-key', apiKey)
    response = urlreq.urlopen(req).read().decode('utf-8')
    responsejson = json.loads(response)

    print(responsejson["author"])
    print(responsejson["content"])
    print(responsejson["date_published"])
    print(responsejson["url"])
    print(responsejson["word_count"])

loadhtml(articleUrl)