from bs4 import BeautifulSoup
import requests

site = requests.get('https://climatempo.com.br/').content

soup = BeautifulSoup(site, 'html.parser')

temperatura = soup.find('p', class_="-bold -white -font-12 _flex _align-center _center")

# print(soup.prettify())
print(temperatura.string)
print(soup.title.string)
print(soup.find('admin'))
