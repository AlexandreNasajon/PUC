print("Insira três números inteiros. Exibirei o menor dentre eles.")
num1 = int(input("1º Número?"))
num2 = int(input("2º Número?"))
num3 = int(input("3º Número?"))

if num1 <= num2:
    if num1 < num3:
        print(num1)
    else:
        print(num3)

elif num2 <= num3:
    print(num2)

else:
    print(num3)
