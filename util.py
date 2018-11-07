import codecs
import re
import json

def require_translate(content):
    return content \
        and not content.startswith("!") \
        and not re.match("\[\d+\].+", content)

def replace_duplicated_image(source):
    m=re.match("(!\[\]\[\d+\])(!\[\]\[\d+\])(!\[\]\[\d+\])", source)
    if m and len(m.groups()) == 3:
        return m.group(3)
    else:
        return source

def chunks(l, n):
    for i in range(0, len(l), n):
        yield l[i:i + n]

def load_trans_term():
    with codecs.open('template/terms.json','r',encoding='utf8') as json_data:
        term_json = json.load(json_data)
        return term_json

def replace_trans_terms(values):
    term_json = load_trans_term()

    result = []
    for value in values:
        for term in term_json:
            value=value.replace(term["key"],term["value"])
            #replace #hello -> # hello
            #replace 1.hello -> 1. hello
        result.append(value)
    return result

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

def write_file(file_output, content):
    with codecs.open(file_output,'w',encoding='utf8') as fo:
            fo.write(content)