-- 3.  Escreva um programa que receba três números como entrada e imprima, como saída, os números em ordem crescente

compare = function(n1,n2,n3)
  if n1 > n2 and n1 > n3 and n2 > n3 then
    return n1 , n2 , n3
    
  elseif n1 > n2 and n1 > n3 and n3 > n2 then
    return n1 , n3 , n2
    
  elseif n2 > n1 and n2 > n3 and n1 > n3 then
    return n2, n1, n3
  
  elseif n3 > n1 and n2 > n3 and n2 > n1 then
    return n2, n3, n1
  elseif n3 > n1 and n3 > n2 and n1 > n2 then
    return n3, n1, n2
  elseif n3 > n2 and n2 > n1 and n3 > n1 then
    return n3, n2, n1
  end  
end

print("Insira o primeiro número:")

  n1 = io.read("*n")

print("Insira o segundo número:")

  n2 = io.read("*n")
  
print("Insira o terceiro número:")

  n3 = io.read("*n")
  
print("Maior","Médio","Menor")  
print(compare(n1,n2,n3))
