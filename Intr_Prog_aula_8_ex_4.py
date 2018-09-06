def inverteString(s):
    return s[-1::-1]

def geraString(nome,alg,n):
    return nome[:n]+inverteString(alg)

nome=input('Nome?')
ano=int(input('Ano de nascimento?'))
ano=str(ano)
print('Login:',nome+inverteString(ano[2:]))
print('Senha:',geraString(nome,ano,len(nome)//2))
