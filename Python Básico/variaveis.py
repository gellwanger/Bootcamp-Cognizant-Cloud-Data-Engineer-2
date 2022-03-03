print('Operações básicas')
a = int(input('Entre com o primeiro valor: '))
b= int(input('Entre com o segundo valor:) '))

soma = a + b
subtracao = a - b
divisao = a/b
multiplicacao = a * b

print ('Soma = {};'.format(soma))
print ('subtração = {};'.format(subtracao))
print ('Divisão = {};'.format(divisao))
print ('Multiplicação = {}'.format(multiplicacao))

print ('Comparação entre variáveis')

if a > b:
    print(a)
elif a < b:
    print(b)
else:
    print('{} = {}'.format(a, b))