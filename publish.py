import codecs
import shutil
import uuid

file_translated="work/translated.md"
file_output="work/published.md"
file_header="template/header.md"
file_footer="template/footer.md"

def require_translate(content):
    return content and not content.startswith("[") and not content.startswith("!")

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

def append_translation(file_output, translation):
    # write to output
    i = 0
    with codecs.open(file_output,'a',encoding='utf8') as fo:
        while i < len(translation):
            if(require_translate(translation[i])):
                i += 1
                fo.write(translation[i]+"\n")
            else:
                fo.write(translation[i]+"\n")

            i += 1


translated_items = read_file(file_translated)
header_items = read_file(file_header)
footer_items = read_file(file_footer)

clean_file(file_output)
append_file(file_output,header_items)
append_translation(file_output, translated_items)
append_file(file_output,footer_items)


shutil.move(file_output,"finished/"+str(uuid.uuid1())+".md")

print("Published.")
