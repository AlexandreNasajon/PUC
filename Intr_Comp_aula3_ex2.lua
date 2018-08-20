-- 2.  Escreva um programa que receba três números como entrada e mostre o maior número recebido.

--[[
compare é uma função que recebe dois números e retorna o maior dentre eles;
se os números forem de mesmo valor, retorna o primeiro
--]]
compare = function(n1,n2)
  if n1 > n2 then
    return n1
  elseif n1 < n2 then
    return n2
  else
    return n1
  end  
end

print("Insira o primeiro número:")

  numero_1 = io.read("*n")

print("Insira o segundo número:")

  numero_2 = io.read("*n")
  
print("Insira o terceiro número:")

  numero_3 = io.read("*n")
  
print(compare(numero_3,compare(numero_1,numero_2)))
