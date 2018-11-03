from google.cloud import translate
from util import chunks

translator = translate.Client()

def google_trans(source_items):
    translated_items = []

    # split into batches
    source_item_chunks = chunks(source_items, 50)

    for source_item_chunk in source_item_chunks:
        # do translate
        translations = translator.translate(source_item_chunk,target_language='zh-cn')
        for translation in translations:
            translated_items.append(translation['translatedText'])
    
    return translated_items