import codecs
import re

def require_translate(content):
    return content and not content.startswith("[") and not content.startswith("!")

def replace_duplicated_image(source):
    m=re.match("(!\[\]\[\d+\])(!\[\]\[\d+\])(!\[\]\[\d+\])", source)
    if m and len(m.groups()) == 3:
        return m.group(3)
    else:
        return source

def chunks(l, n):
    for i in range(0, len(l), n):
        yield l[i:i + n]

def read_file(file_input):
    with codecs.open(file_input,'r',encoding='utf8', errors='ignore') as fi:
        content = fi.readlines()
        content = [x.strip() for x in content]
        return content

def clean_file(file_output):
    with codecs.open(file_output,'w',encoding='utf8') as fo:
        fo.write("\n")

def append_file(file_output, content_items):
    with codecs.open(file_output,'a+',encoding='utf8') as fo:
        for content in content_items:
            fo.write(content+"\n")