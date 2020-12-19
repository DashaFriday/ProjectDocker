#!/usr/bin/env python3.7

with open('ghjk.txt', 'r+') as f:
	txt = f.read().replace('\n', '')
	f.seek(0)
	f.write(txt)

with open('ghjk.txt', 'r+') as f:
	txt = f.read().replace('01', '0 1')
	f.seek(0)
	f.write(txt)

with open('ghjk.txt', 'r+') as f:
	txt = f.read().replace('111', '11 1')
	f.seek(0)
	f.write(txt)

with open('ghjk.txt', 'r+') as f:
	txt = f.read()
	l = len(txt)
	i=0
	j=0
	while j < l-1:
		if txt[j] == ' ':
			i = i+1
			if i % 7 == 0:
				txt = txt[:j] + "A" + txt[j+1:]
				i = 0
		
		j = j+1
	f.seek(0)
	f.write(txt)

with open('ghjk.txt', 'r+') as f:
	txt = f.read().replace('A', '\n')
	f.seek(0)
	f.write(txt)

