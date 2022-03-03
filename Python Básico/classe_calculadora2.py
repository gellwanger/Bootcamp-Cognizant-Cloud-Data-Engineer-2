from operator import sub

class Calculadora2:
    def soma(self, valor_a, valor_b):
        return valor_a + valor_b

    def subtracao(self, valor_a, valor_b):
        return valor_a - valor_b

    def multiplicacao(self, valor_a, valor_b):
        return valor_a * valor_b

    def divisao(self, valor_a, valor_b):
        return valor_a / valor_b

if __name__ == '__main__':
    calculadora2 = Calculadora2()
    print(calculadora2.soma(10, 2))
    print(calculadora2.subtracao(3, 5))
    print(calculadora2.multiplicacao(4, 5))
    print(calculadora2.divisao(8, 4))