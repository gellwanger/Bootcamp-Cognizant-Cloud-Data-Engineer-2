from re import A


lista = [1, 10]

try:
    arquivo = open('teste.txt', 'r')
    divisao = 10 / 1
    numero = lista[1]
    x = a
except ZeroDivisionError:
    print('Não é possível dividir um número por 0')
except ArithmeticError:
    print('houve um erro ao realizar a operação atitimética')
except IndexError:
    print('Erro ao acessar índice inválido')
except BaseException as ex:
    print('Erro desconhecido: {}'.format(ex))
else: 
    print('Operação realizada')
finally:
    print('Fechando arquivo')
    arquivo.close()