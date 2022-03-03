# Desafio
# Você terá o desafio de ler um valor inteiro, que é o tempo de duração em segundos
# de um determinado evento em uma loja, e informe-o expresso no formato horas:minutos:segundos.

segundos = int(input())

minutos = int(segundos/60)
segundos = int(segundos - (minutos * 60))
horas = int(minutos / 60)
minutos = int(minutos - (horas * 60))

print("{}:{}:{}".format(horas, minutos, segundos))
