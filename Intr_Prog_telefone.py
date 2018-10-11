n = 0
valorT = 0
maiorConta = -1
cod = int(input("Código do assinante?"))
while cod > 0:
    plano = int(input("Plano? Econômico: 1 / Fale Mais: 2? "))
    minutos = int(input("Qtd minutos locais gastos no mês? "))
    despertador = int(input("Número de utilizações do despertador? "))

    if plano == 1:
        conta = 37
        if minutos > 100:
            excedente = minutos - 100
            conta += excedente * 0.3
            
    elif plano == 2:
        conta = 70
        if minutos > 250:
            excedente = minutos - 250
            conta += excedente * 0.5

    conta += despertador * 1.5

    if conta > maiorConta:
        maiorConta = conta
        maiorCod = cod
   
    n += 1
    valorT += conta
    print("Assinante: %d Total conta: %8.2f"%(cod,conta))
    cod = int(input("Código do assinante?"))

if n>0:
    valorM = valorT / n
    print("Assinante com maior conta: %d Valor: R$ %d"%(maiorCod , maiorConta))
    print("Valor médio arrecadado por assinante no mês: R$ %d"%(valorM))
