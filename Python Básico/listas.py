from traceback import print_tb

lista = [1, 3, 5, 7]
lista_animal = ['cachorro', 'pato', 'zebra', 'gato', 'elefante', 'lobo']

for x in lista_animal:
    print(x)

print(sum(lista))

print(max(lista))
print(min(lista))
print(min(lista_animal))
print(max(lista_animal))
lista_animal.pop()
if 'lobo' in lista_animal:
    print('Existe lobo na lista')
else:
    print(lista_animal)
    print('Não existe lobo na lista')
    lista_animal.append('lobo')
    print(lista_animal)

lista_animal.sort()
print(lista_animal)

tupla_animal = tuple(lista_animal)
print(tupla_animal)

