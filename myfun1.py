#!/usr/bin/env python3.7

import random

flag = 'flag{' + ''.join(random.choice('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789') for _ in range(random.randint(10, 15))) + '}'

with open("text.txt", "w") as file:
    file.write(flag)
