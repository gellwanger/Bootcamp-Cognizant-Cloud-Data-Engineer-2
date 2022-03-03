conjunto = {1, 3, 2, 5}
conjunto2 = {4, 5, 6, 7}
conjunto_a = {1, 2, 3}
conjunto_b = {1, 2, 3, 4, 5}

conjunto_uniao = conjunto.union(conjunto2)
conjunto_iterseccao = conjunto.intersection(conjunto2)
conjunto_diferenca = conjunto.difference(conjunto2)
conjunto_diferenca2 = conjunto2.difference(conjunto)
conjunto_subset = conjunto_a.issubset(conjunto_b)
conjunto_subset2 = conjunto_b.issubset(conjunto_a)
conjunto_superset = conjunto_a.issuperset(conjunto_b)
conjunto_superset2 = conjunto_b.issuperset(conjunto_a)

if __name__ == '__main__':
    print('União dos conjuntos 1 e 2: {}'.format(conjunto_uniao))
    print('Intersecção entre os conjuntos 1 e 2: {}'.format(conjunto_iterseccao))
    print('Diferença entre conjunto 1 e 2: {}'.format(conjunto_diferenca))
    print('Diferença entre conjunto 2 e 1: {}'.format(conjunto_diferenca2))
    print('Conjunto_a é subconjunto de conjunto_b? {}'.format(conjunto_subset))
    print('Conjunto_b é subconjunto de conjunto_a? {}'.format(conjunto_subset2))
    print('Conjunto_a é superconjunto de conjunto_b? {}'.format(conjunto_superset))
    print('Conjunto_b é superconjunto de conjunto_a? {}'.format(conjunto_superset2))
