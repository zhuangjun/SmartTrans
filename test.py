import json

def load_trans_term():
    with open('template/terms.json') as json_data:
        term_json = json.load(json_data)
        return term_json

def replace_trans_terms(values):
    term_json = load_trans_term()

    result = []
    for value in values:
        for term in term_json:
            value=value.replace(term["key"],term["value"])
        result.append(value)
    return result

items=[]
items.append("＃＃＃＃ 背景")
items.append("")
items.append("硬币")
item = replace_trans_terms(items)
print(item)