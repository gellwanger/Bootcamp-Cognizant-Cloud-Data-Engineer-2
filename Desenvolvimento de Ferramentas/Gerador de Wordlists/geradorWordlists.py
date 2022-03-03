import itertools
from unittest import result

string = input('String a ser permutada: ')

resultado = itertools.permutations(string, len(string))

for i in resultado:
    print(''.join(i))
