from urllib import response
import requests

def retorna_dados_cep(cep):
    response = requests.get('https://viacep.com.br/ws/{}/json'.format(cep))
    dados_cep = response.json()
    print('-----------------------------------')
    print(response.json())
    print('-----------------------------------')
    print(dados_cep['logradouro'])
    print('-----------------------------------')
    return dados_cep

def retorna_dados_pokemon(pokemon):
    response = requests.get('https://pokeapi.co/api/v2/pokemon/{}'.format(pokemon))
    dados_pokemon = response.json()
    print(dados_pokemon['sprites']['front_shiny'])
    return dados_pokemon

if __name__ == '__main__':
    retorna_dados_cep('22041001')
    retorna_dados_pokemon('pikachu')