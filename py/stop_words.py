import nltk
from nltk.stem import PorterStemmer
from nltk.corpus import stopwords
porter = PorterStemmer()
stemmer = nltk.stem.porter.PorterStemmer()
stop = set(stopwords.words('english'))

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