from Classe_TV import Televisao
from Classe_calculadora1 import Calculadora
from contador_letras import contador_letras

if __name__ == '__main__':
    televisao = Televisao()
    print(televisao.ligada)
    televisao.power()
    print(televisao.ligada)

    calculadora = Calculadora(1, 3)
    print(calculadora.soma())

    lista = ['cachorro', 'gato', 'peixe']
    total_letras = contador_letras(lista)
    print('Total de letras de cada palavra: {}'.format(total_letras))