import json
import urllib.request as urlreq
import sys
from util import *

# main
articleUrl= sys.argv[1] 

file_soure = "work/source.md"
apiKey = "vTz1MLzLOcCbwLNy9Qkw9ydyOzRqjNgpjIHbWQCC"

req = urlreq.Request("http://heckyesmarkdown.com/go/?read=1&u="+articleUrl)
response = urlreq.urlopen(req).read().decode('utf-8')
write_file(file_soure, response)

print('source loaded.')