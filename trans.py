from googletrans import Translator
import codecs

translator = Translator()
translate_batch_size = 50

file_input="input.md";
file_output="output.md";

def chunks(l, n):
    for i in range(0, len(l), n):
        yield l[i:i + n]

def require_translate(content):
    return source_items[i] and not source_items[i].startswith("[") and not source_items[i].startswith("!")

with codecs.open(file_input,'r',encoding='utf8') as fi:
    content = fi.readlines()
    content = [x.strip() for x in content]
    
    source_items = []
    translated_items = []

    # read input
    for line in content:
        source_items.append(line.encode('utf-8'));

    # split into batches
    source_item_chunks = chunks(source_items, translate_batch_size)
    for source_item_chunk in source_item_chunks:
        # do translate
        translations = translator.translate(source_item_chunk,src="auto", dest='zh-cn')
        for translation in translations:
            translated_items.append(translation.text.encode('utf-8'))
        
    # write to output
    i = 0
    with codecs.open(file_output,'w',encoding='utf-16') as fo:
        while i < len(source_items):
            fo.write(source_items[i].decode('utf-8').strip()+"\n")
            
            if(require_translate(source_items[i])):
                fo.write("\n") # extra line for markdown line break
                fo.write(translated_items[i].decode('utf-8').strip()+"\n")

            i += 1

    print("Translated. Please check output.md!")
