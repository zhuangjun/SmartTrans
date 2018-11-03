import os, requests, uuid, json

if 'TRANSLATOR_TEXT_KEY' in os.environ:
    subscriptionKey = os.environ['TRANSLATOR_TEXT_KEY']
else:
    print('Environment variable for TRANSLATOR_TEXT_KEY is not set.')
    exit()

def ms_trans(source_items):
    base_url = 'https://api.cognitive.microsofttranslator.com'
    path = '/translate?api-version=3.0'
    params = '&to=zh-cn'
    constructed_url = base_url + path + params

    headers = {
        'Ocp-Apim-Subscription-Key': subscriptionKey,
        'Content-type': 'application/json',
        'X-ClientTraceId': str(uuid.uuid4())
    }

    translated_items = []
    
    body = []
    for item in source_items:
        body_item = {}
        body_item["text"] = item
        body.append(body_item)

    request = requests.post(constructed_url, headers=headers, json=body)
    response = request.json()

    for item in response:
        translated_items.append(item["translations"][0]["text"])
    return translated_items