#!/usr/bin/env python3.7

import random

WORDS = ("polytech", "flag", "python", "what_you_looking_for", "answer",  "strange_things", "project", "container", "docker", "easy", "random", "words")
word = random.choice(WORDS)+"_"+random.choice(WORDS)+"_"+random.choice(WORDS)

with open("text.txt", "w") as file:
    file.write(word)


