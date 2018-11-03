import re

source="![][1]![][2]![][2]"

def replace_duplicated_image(source):
    m=re.match("(!\[\]\[\d+\])(!\[\]\[\d+\])(!\[\]\[\d+\])", source)
    if m and len(m.groups()) == 3:
        return m.group(3)
    else:
        return source

print(replace_duplicated_image("![][1]![][2]![][2]"))
print(replace_duplicated_image("![][1]![][2]"))