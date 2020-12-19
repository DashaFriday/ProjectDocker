#!/usr/bin/env python3.7

from contextlib import redirect_stdout 

def pretty_bytes(fpath, delim=''):
    with open(fpath, 'br') as f:
        for chunk in iter(lambda: f.read(8), b''):
            print(delim.join([f'{byte:08b}' for byte in chunk ]))

with open('ghjk.txt', 'w') as f: 
    with redirect_stdout(f): 
        pretty_bytes('qrcode6.png')




    

