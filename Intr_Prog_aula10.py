totalCat1 = totalCat2 = totalCat3 = 0.0
n = 0

cod = int(input("Código do cliente?"))

while cod > 0:
    cat = int(input("Categoria?"))
    tre = int(input("Número de trechos?"))
    i = 1
    qtd = 0
    
    while i <= tre:
        MilhasTre = float(input("Quantidade de milhas do trecho %d?"%i))
        i += 1
        qtd += MilhasTre

    if cat == 2:
        qtd += 500
        totalCat2 += qtd
    elif cat == 1:
        if qtd <= 10000:
            qtd += 1000
        else:
            qtd += qtd*0.2
        totalCat1 += qtd
    else:
        totalCat3 += qtd

    print("Cliente %d obteve %d milhas."%(cod,qtd))
    n += 1
    cod = int(input("Código do cliente?"))

if n > 0:
    print("Total de milhas creditadas à categoria 1: " + str(totalCat1))
    print("Total de milhas creditadas à categoria 2: " + str(totalCat2))
    print("Total de milhas creditadas à categoria 3: " + str(totalCat3))
    print("Total geral de milhas creditadas: " + str(totalCat1 + totalCat2 + totalCat3))

        
