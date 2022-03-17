import re
import nltk
import numpy as np
import networkx as nx
# from thematic_feature import thematicFeature
# from stop_words import remove_stop_words
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
import collections

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


def remove_stop_words(sentences) :
    tokenized_sentences = []
    for sentence in sentences :
        tokens = []
        split = sentence.lower().split()
        for word in split :
            if word not in stop :
                try :
                    tokens.append(porter.stem(word))
                except :
                    tokens.append(word)
        
        tokenized_sentences.append(tokens)
    return tokenized_sentences


text_to_summarize = """
Mr. Taproot is the first significant Bitcoin (B.T.C) update since SegWit, scheduled for November 2021. What is interesting about the Taproot upgrade is that it has almost unanimous support from the crypto community. In contrast, the disputes around the update in 2017 resulted in the Bitcoin Cash hard fork. If you are interested in analyzing the technical nuances of the update, check out our previous article. Further, we will explain how exactly these changes will affect the life of an average crypto user.
The problem spots of most of the blockchains are:
scalability;
confidentiality;
security.
As the network gains popularity, its network load grows exponentially. That, in turn, degrades the transaction processing. Taproot updates address these issues.
Taproot in a nutshell
The Taproot soft fork will optimize the functioning of the Bitcoin scripts and increase the privacy of transactions. The Taproot update will be accompanied by Schnorr signatures and the Merkle signature scheme (Merkle tree).
Now
Currently, the Bitcoin network uses the P2SH (pay to script hash, or payment script hash) method. There, the conditions of a certain scenario determine the confirmation of a transaction. Once the transaction is completed, all data about the conditions goes into the blockchain, which 1) loads the network; 2) undermines the network’s privacy. It is one of the problems with the current BTC blockchain.
Another factor affecting scalability, privacy, and even fees is the ECDSA multi-signature. Such signatures load the blockchain and slow down the transaction confirmation process.
After
The P2SH method will be replaced by the Merkle tree. This data organizing technology will also allow one condition to be fulfilled for the transaction to be completed, while the other conditions will remain hidden. It will significantly unload the network and protect the transaction data much better.
The introduction of Schnorr signatures will solve the nonlinearity issue. This technology will allow public keys and multi-transaction signatures to be combined into a single key and a single signature, and vice versa. It will increase the transaction speed and help reduce fees.
How will you benefit from Taproot?
Since Bitcoin is a public blockchain, anyone can access the data about the parties that perform the transaction. However, Taproot allows for hiding full user information. All things considered, the upcoming update:
significantly increases the confidentiality of the network;
reduces the amount of data transmitted and stored on the blockchain;
improves the scalability — the number of transactions per second;
helps to reduce transaction fees;
helps eliminate the threat of double spending due to the impossibility of changing the signature.
Resume
The Taproot update aims to optimize the Bitcoin blockchain, making it more secure and private. It is facilitated by the introduction of the Schnorr signature and MAST (Merkle tree) technologies, due to which the number of transaction types and their complexity will increase.
"""

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
    print(sentences)
    return sentences

def posTagger(tokenized_sentences) :
    tagged = []
    for sentence in tokenized_sentences :
        tag = nltk.pos_tag(sentence)
        tagged.append(tag)
    return tagged

def remove_similar_sentences(sentences):
  threshold_similarity = 0.5
  print("Cosine Similarity :")
  print("Length :",len(sentences))
  l=[]
  for i in range(len(sentences)):
    j=i+1
    
    while j<len(sentences):
      l.append(get_cosine_score(text_to_vector(sentences[i]),text_to_vector(sentences[j])))
      if get_cosine_score(text_to_vector(sentences[i]),text_to_vector(sentences[j]))>threshold_similarity:
          del(sentences[j])
      else:
        j+=1
  print("Over ",len(sentences))
  return sentences


def summarize_a_file(filename: str):
    # try:
    #     file = open(filename, 'r')
    # except FileNotFoundError:
    #     print('Error: No file found')
    #     exit(1)
    text = text_to_summarize
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
    for i in range(len(sentences)//2):
      summarize_text.append("\n".join(ranked_sentence[i][1]))

    print("\n\nSummarize Text: \n", ".\n".join(summarize_text))
   
if __name__ == '__main__':
    summarize_a_file('input')