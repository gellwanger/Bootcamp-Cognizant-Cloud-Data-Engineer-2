class Televisao:
    def __init__(self):
        self.ligada = False
        self.canal = 5

    def power(self):
        if self.ligada:
            self.ligada = False
        else:
            self.ligada = True
    
    def aumenta_canal(self):
        self.canal += 1

    def diminui_canal(self):
        self.canal -= 1


televisao = Televisao()
televisao.power()
televisao.aumenta_canal()
televisao.aumenta_canal()

if __name__ == '__main__':
    print('Televisão está ligada: {}'.format(televisao.ligada))
    print('Canal: {}'.format(televisao.canal))
