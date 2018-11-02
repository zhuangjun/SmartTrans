import re

source="![][1]![][2]![][2]"
regex = "(!\[\]\[\d+\])"

m=re.search(regex, source)
# print(len(m.groups()))
print(m.group(2))
