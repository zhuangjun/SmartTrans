from google.cloud import translate
import codecs
from util import *
from google_trans import *
from ms_trans import *

file_input="work/source.md"
file_output="work/translated.md"

source_items = []
output_items = []

# read input
content = read_file(file_input)
for line in content:
    source_items.append(replace_duplicated_image(line))

# do trans
google_translated_items = google_trans(source_items)
# ms_translated_items = ms_trans(source_items)

# build output items
i = 0
while i < len(source_items):
    output_items.append(source_items[i])
    
    if(require_translate(source_items[i])):
        output_items.append(google_translated_items[i])
        # output_items.append(ms_translated_items[i])

    i += 1

# write file
clean_file(file_output)
append_file(file_output, output_items)

print("Translated.")