import json
import re
from rbm import rbm_summarize
from abstractive import abs_summarize
def evaluate_f1_score(M_text,H_text):
    M_res = re.sub(r'[^\w\s]', '', M_text)
    M_res = M_res.lower()
    M_list = M_res.split()
    M_len = len(M_list)
    H_res = re.sub(r'[^\w\s]', '', H_text)
    H_res = H_res.lower()
    H_list = H_res.split()
    H_len = len(H_list)
    count=0
    for i in H_list:
        if i in M_list:
            count+=1
            M_list.remove(i)
    recall = count / H_len
    precision = count / M_len
    f1_score = 2*(precision*recall)/(precision + recall)
    return f1_score


def get_avg_f1_score():
    f= open("tests/summary.json")
    data=json.load(f)
    f1_scores = []
    for i in range(len(data)):
        f1_scores.append(evaluate_f1_score(H_text=data[i]['summary'],M_text=abs_summarize(rbm_summarize(data[i]['text'],0.8),0.6)))
    print(f1_scores)
    print(sum(f1_scores)/len(f1_scores))

if __name__=="__main__":
    get_avg_f1_score()