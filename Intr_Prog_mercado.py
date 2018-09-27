#bugado e incompleto

import math

# a
# preco_unidade
# recebe código do produto
# retorna preço unitário
def preco_unidade(codigo):
    if codigo % 2 == 0:
        return codigo*0.15

    else:
        return codigo*0.04

# b
# desconto_valor recebe valor da encomenda
# retorna o valor do desconto
def desconto_valor(valor_encomenda):
    if valor_encomenda > 5000:
        return 40*valor_encomenda/100
    
    elif valor_encomenda > 3000:
        return 35*valor_encomenda/100
    
    elif valor_encomenda > 1000:
        return 25*valor_encomenda/100
    
    else:
        return 0

# c
# desconto_mes
# recebe o mes da compra e o valor a pagar
# retorna o valor do desconto
def desconto_mes(mes,valor):
    if "r" in mes:
        return 20 * math.floor(valor/500)

    elif "a" in mes:
        return 80 * math.floor(valor/500)

    else:
        return 35 * math.floor(valor/500)

# d
# resultado
# recebe o preço do produto, a quantidade, o total a pagar e os descontos
# exibe na tela saidas
def resultado(codigo,quantidade,mes):
    

    
    print("Preço por unidade: " + str(preco_unidade(codigo)))
    print("Quantidade: " + str(quantidade))
    print("Preço sem descontos: " + str(preco_unidade(codigo)+quantidade))
    print("Desconto pelo valor da encomenda: " + str(desconto_valor(preco_unidade(codigo)*quantidade)))
    print("Desconto pelo mês: " + str(desconto_mes(mes,desconto_valor(preco_unidade(codigo)*quantidade))))
    print("Preço a pagar: " + str( ( preco_unidade(codigo) * quantidade ) - ( desconto_mes(mes,desconto_valor(preco_unidade(codigo)*quantidade) ) ) )
    
# perguntas
codigo = int(input("Código do produto?"))
quantidade = int(input("Quantidade?"))
mes = str(input("Mês?"))

#chamada
resultado(codigo,quantidade,mes)
