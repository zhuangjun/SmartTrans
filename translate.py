from google.cloud import translate
import codecs

translator = translate.Client()

file_input="work/source.md"
file_output="work/translated.md"
translate_batch_size = 50

def require_translate(content):
    return content and not content.startswith("[") and not content.startswith("!")

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
        source_items.append(line);

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
