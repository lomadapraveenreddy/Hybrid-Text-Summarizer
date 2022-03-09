from collections import Counter

def thematicFeature(tokenized_sentences) :
    word_list = []
    for sentence in tokenized_sentences :
        for word in sentence :
            try:
                word = ''.join(e for e in word if e.isalnum())
                #print(word)
                word_list.append(word)
            except Exception as e:
                print("ERR")
    counts = Counter(word_list)
    number_of_words = len(counts)
    most_common = counts.most_common(10)
    thematic_words = []
    for data in most_common :
        thematic_words.append(data[0])
    print(thematic_words)
    scores = []
    for sentence in tokenized_sentences :
        score = 0
        for word in sentence :
            try:
                word = ''.join(e for e in word if e.isalnum())
                if word in thematic_words :
                    score = score + 1
                #print(word)
            except Exception as e:
                print("ERR")
        score = 1.0*score/(number_of_words)
        scores.append(score)
    return scores
