import codecs

file_input="translated.md"
file_output="published.md"

def require_translate(content):
    return content and not content.startswith("[") and not content.startswith("!")

with codecs.open(file_input,'r',encoding='utf-16') as fi:
    content = fi.readlines()
    content = [x.strip() for x in content]
    
    source_items = []
    translated_items = []

    # read input
    for line in content:
        source_items.append(line);

    # write to output
    i = 0
    with codecs.open(file_output,'w',encoding='utf-16') as fo:
        while i < len(source_items):
            if(require_translate(source_items[i])):
                i += 1
                fo.write(source_items[i]+"\n")
            else:
                fo.write(source_items[i]+"\n")

            i += 1

    print("Published.")
