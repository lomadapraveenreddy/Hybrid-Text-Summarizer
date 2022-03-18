import re
import nltk
import numpy as np
import networkx as nx
from nltk.stem import PorterStemmer
from nltk.corpus import stopwords
porter = PorterStemmer()
stemmer = nltk.stem.porter.PorterStemmer()
nltk.download('stopwords')
nltk.download('averaged_perceptron_tagger')
stop = set(stopwords.words('english'))

############ cosine similarity 
import math
import re

from collections import Counter

WORD = re.compile(r"\w+")


def get_cosine_score(vec1, vec2):
    intersection = set(vec1.keys()) & set(vec2.keys())
    numerator = sum([vec1[x] * vec2[x] for x in intersection])

    sum1 = sum([vec1[x] ** 2 for x in list(vec1.keys())])
    sum2 = sum([vec2[x] ** 2 for x in list(vec2.keys())])
    denominator = math.sqrt(sum1) * math.sqrt(sum2)

    if not denominator:
        return 0.0
    else:
        return float(numerator) / denominator


def text_to_vector(text):
    words = WORD.findall(text)
    return Counter(words)
##################

caps = "([A-Z])"
prefixes = "(Mr|St|Mrs|Ms|Dr)[.]"
suffixes = "(Inc|Ltd|Jr|Sr|Co)"
starters = "(Mr|Mrs|Ms|Dr|He\s|She\s|It\s|They\s|Their\s|Our\s|We\s|But\s|However\s|That\s|This\s|Wherever)"
acronymsRegex = "([A-Z][.][A-Z][.](?:[A-Z][.])?)"
websites = "[.](com|net|org|io|gov)"


def split_into_sentences(text):
    text = " " + text + "  "
    text = text.replace("\n", " ")
    text = re.sub(prefixes, "\\1<prd>", text)
    text = re.sub(websites, "<prd>\\1", text)
    if "Ph.D" in text:
        text = text.replace("Ph.D.", "Ph<prd>D<prd>")
    text = re.sub("\s" + caps + "[.] ", " \\1<prd> ", text)
    text = re.sub(acronymsRegex + " " + starters, "\\1<stop> \\2", text)
    text = re.sub(caps + "[.]" + caps + "[.]" + caps + "[.]", "\\1<prd>\\2<prd>\\3<prd>", text)
    text = re.sub(caps + "[.]" + caps + "[.]", "\\1<prd>\\2<prd>", text)
    text = re.sub(" " + suffixes + "[.] " + starters, " \\1<stop> \\2", text)
    text = re.sub(" " + suffixes + "[.]", " \\1<prd>", text)
    text = re.sub(" " + caps + "[.]", " \\1<prd>", text)
    if "”" in text:
        text = text.replace(".”", "”.")
    if "\"" in text:
        text = text.replace(".\"", "\".")
    if "!" in text:
        text = text.replace("!\"", "\"!")
    if "?" in text:
        text = text.replace("?\"", "\"?")
    # if "," in text: text = text.replace(",\"","\",")

    text = text.replace(".", ".<stop>")
    text = text.replace("?", "?<stop>")
    text = text.replace("!", "!<stop>")
    # text = text.replace(",","!<stop>")
    text = text.replace("<prd>", ".")
    sentences = text.split("<stop>")
    sentences = sentences[:-1]
    sentences = [s.strip() for s in sentences]
    
    return sentences

def remove_similar_sentences(sentences):
  threshold_similarity = 0.5
  
  
  l=[]
  for i in range(len(sentences)):
    j=i+1
    
    while j<len(sentences):
      l.append(get_cosine_score(text_to_vector(sentences[i]),text_to_vector(sentences[j])))
      if get_cosine_score(text_to_vector(sentences[i]),text_to_vector(sentences[j]))>threshold_similarity:
          del(sentences[j])
      else:
        j+=1
  
  return sentences


def summarize(text,size):
    sentences = split_into_sentences(text)
    sentences = remove_similar_sentences(sentences)
    similarity_matrix = []
    for i in range(len(sentences)):
      temp = []
      for j in range(len(sentences)):
        temp.append(get_cosine_score(text_to_vector(sentences[i]),text_to_vector(sentences[j])))
      similarity_matrix.append(temp)
    
    sentence_similarity_graph = nx.from_numpy_array(np.array(similarity_matrix))
    scores = nx.pagerank(sentence_similarity_graph)

    ranked_sentence = sorted(((scores[i],s) for i,s in enumerate(sentences)), reverse=True)    
    
    summarize_text = []
    for i in range(int(len(sentences)*size)):
      summarize_text.append("".join(ranked_sentence[i][1]))

    
    return ". ".join(summarize_text)