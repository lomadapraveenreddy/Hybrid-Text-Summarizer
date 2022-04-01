import re
def evaluation(M_text,H_text):
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

M_text = "From the moment we are born, we can not live alone; we stand in continual need of assistance of all around us, for body and soul and spirit; we need clothes which other men make; houses, which other men build, food, which other men produce; we have to get our livelihood by working for others, while others get their livelihood in return by working for us."

H_text = "We cannot live alone in this world. We need the help of a host of people-the farmers for food, the weaver for cloth, the mason for houses; for consolation in sorrow, teachers for education, lawyers for property, and above all, parents to bring up in our childhood."

print("f1_score :",evaluation(M_text,H_text))