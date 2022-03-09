# count word frequency
import pandas as pd
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from consts import thresholdOfSimilarity


def filter_consine_similarity(strings: list) -> list:
    count_vectorizer = CountVectorizer(stop_words='english')
    strings = [x.lower() for x in strings]
    sparse_matrix = count_vectorizer.fit_transform(strings)

    dense_matrix = sparse_matrix.todense()
    df = pd.DataFrame(dense_matrix, columns=count_vectorizer.get_feature_names_out())

    # cosine similarity
    csDf = pd.DataFrame(cosine_similarity(df, dense_output=True))
    noOfDropped = 0
    for i in range(csDf.shape[0]):
        for j in range(i + 1, csDf.shape[0]):
            if csDf[i][j] > thresholdOfSimilarity:
                csDf.drop(j, inplace=True)
                csDf.drop(j, axis=1, inplace=True)
                del (strings[j - noOfDropped])
                noOfDropped += 1

    print(f'dropped {noOfDropped} strings')
    return strings
