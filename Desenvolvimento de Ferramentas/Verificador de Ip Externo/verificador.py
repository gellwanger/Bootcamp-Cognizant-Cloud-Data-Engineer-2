import re
import json
from urllib.request import urlopen

url = 'https://ipinfo.io/json'

response = urlopen(url)

dados = json.load(response)

ip = dados['ip']
org = dados['org']
cidade = dados['city']
pais = dados['country']
regiao = dados['region']

print('Detalhes do IP externo\n')
print('Ip: {4}\nRegião: {1}\nPais: {2}\nCidade: {3}\nOrganização: {0}'.format(org, regiao, pais, cidade, ip))