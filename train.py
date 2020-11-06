import json
from nltk_utils import tokenize, stem, bag_of_words
import numpy as np


with open("intents.json", "r") as file:
    intents = json.load(file)

all_words = []
tags = []
xy = []


for intent in intents['intents']:
    tag = intent['tag']
    tags.append(tag)
    for pattern in intent['patterns']:
        w = tokenize(pattern)
        all_words.extend(w)
        xy.append((w, tag))

ignore_word = [",", ".", "'", '"', "?", "!", "^", "@", "#", "_", "-"] #we need, regular expression
all_words = [stem(w) for w in all_words if w not in ignore_word] #this is better than using map
all_words = sorted(set(all_words))
tags = sorted(set(tags))# for order

print(all_words)
# print(tags)
# print(xy)

X_train = []
Y_train = []
for (pattern_sentence, tag) in xy:
    bag = bag_of_words(pattern_sentence, all_words)
    X_train.append(bag)

    label = tags.index(tag)
    Y_train.append(label)

X_train = np.array(X_train)
Y_train = np.array(Y_train)


class ChatDataset(Dataset):
    def __init__(self):
        self.n_sample

"""
Terms that I have to learn

One hot encoding, one hot vector, 
: 표현하고 싶은 단어의 인덱스에 1을 부여, 나머지는 0을 부여
CrossEntropy loss
"""