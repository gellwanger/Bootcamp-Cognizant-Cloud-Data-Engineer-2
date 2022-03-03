import ipaddress

ip = '192.168.0.1'

ip2 = '192.168.0.0/24'
 
endereco = ipaddress.ip_address(ip)
rede = ipaddress.ip_network(ip2)

print(endereco)
print(rede)