from google.cloud import translate
import codecs
import re
from util import require_translate

translator = translate.Client()

file_input="work/source.md"
file_output="work/translated.md"
translate_batch_size = 50

def replace_duplicated_image(source):
    m=re.match("(!\[\]\[\d+\])(!\[\]\[\d+\])(!\[\]\[\d+\])", source)
    if m and len(m.groups()) == 3:
        return m.group(3)
    else:
        return source

def chunks(l, n):
    for i in range(0, len(l), n):
        yield l[i:i + n]

with codecs.open(file_input,'r',encoding='utf8') as fi:
    content = fi.readlines()
    content = [x.strip() for x in content]
    
    source_items = []
    task_items = []
    translated_items = []

    # read input
    for line in content:
        source_items.append(replace_duplicated_image(line));

    # split into batches
    source_item_chunks = chunks(source_items, translate_batch_size)
    for source_item_chunk in source_item_chunks:
        # do translate
        translations = translator.translate(source_item_chunk,target_language='zh-cn')
        for translation in translations:
            translated_items.append(translation['translatedText'])

    # write to output
    i = 0
    with codecs.open(file_output,'w',encoding='utf8') as fo:
        while i < len(source_items):
            fo.write(source_items[i]+"\n")
            
            if(require_translate(source_items[i])):
                fo.write(translated_items[i]+"\n")

            i += 1

    print("Translated.")
