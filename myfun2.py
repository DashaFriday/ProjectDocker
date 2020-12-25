#!/usr/bin/env python3.7


import binascii

with open("qrcode6.png", 'rb') as f:
    content = f.read()
print(binascii.hexlify(content))
