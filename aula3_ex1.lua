-- 1.  Escreva um programa que receba dois n ́umeros como entrada e mostre o maior deles.

print("Insira o primeiro número:")

  numero_1 = io.read("*n")

print("Insira o segundo número:")

  numero_2 = io.read("*n")
  
if numero_1 > numero_2 then
  return print("O maior número é: ",numero_1)
elseif numero_1 < numero_2 then
  return print("O maior número é: ",numero_2)
else
  return print("Os números são de mesmo valor.")
end
