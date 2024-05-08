pip install pandas googletrans==4.0.0-rc1
import pandas as pd
from googletrans import Translator
translator = Translator()
def translate_text(text, dest='en'):
    translation = translator.translate(text, dest=dest)
    return translation.text









import googletrans
from googletrans import Translator
import pandas as pd
df_ar = pd.read_csv("/Users/macbook/Desktop/PHD COURSES/2023-2024/SPRING 2024/COURSES/POL 688/POL688 PROJECT/AlHadath/commentsalhadath.csv")
df_ar.head()
pip install google-cloud-translate
from google.cloud import translate_v2 as translate
translate_client = translate.Client('AIzaSyBL2ldoeU7F3bLYigvhIZ_ChFVKbDPlA3M')
column_to_translate = 'text'
def translate_text(text):
    return translator.translate(text, src='ar', dest='en').text


def translate_text(text):
    return translator.translate(text, src='ar', dest='en').text

def translate_text(text):
    translation = translate_client.translate(text, source_language='ar', target_language='en')
    return translation['translatedText']
    