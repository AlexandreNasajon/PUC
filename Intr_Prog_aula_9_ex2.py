import math

#qty_latas

#custo_total

#custo_lata = 20 reais

#tinta_lata = 5 litros

#litro_tinta = 3 metros quadrados

def area_retangulo( altura , comprimento ):
    return altura * comprimento    

def area_circulo( raio ):
    return math.pi * (raio ** 2)

def area_cilindro( raio , altura ):
    a = area_circulo(raio)
    b = area_retangulo( altura , comprimento)
    return 2 * a + b
    
def qty_latas( raio , altura ):
    area = area_cilindro( raio , altura )
    litros_de_tinta = area / 3
    latas_de_tinta = litros_de_tinta / 5
    custo_da_lata = 20 * latas_de_tinta
    return custo_da_lata

altura = int(input("Altura?"))
raio = int(input("Raio?"))

comprimento = 2 * math.pi * raio

print(area_retangulo( altura , comprimento))

print(area_circulo ( raio ))

print(area_cilindro( raio , altura ))

print(qty_latas( raio , altura ))
