import re

regex="(#+)(\S+)"
content="2.同样"

m=re.match("(\d+\.)(\S+)", content)
if m and len(m.groups()) == 2:
    print(m.group(1)+" "+m.group(2))