--[[
4.  Considere uma disciplina que adota o seguinte crit ́erio de aprova ̧c ̃ao:  os
alunos fazem duas provas (P1 e P2) iniciais; se a m ́edia nas duas provas
for maior ou igual a 5.0, e se nenhuma das duas notas for inferior a 3.0, o
aluno passa direto.  Caso contr ́ario, o aluno faz uma terceira prova (P3) e
a m ́edia  ́e calculada considerando-se a terceira nota e a maior das notas
entre P1 e P2.  Neste caso, o aluno  ́e aprovado se a m ́edia final for maior
ou igual a 5.0.
Escreva um programa completo que leia inicialmente as duas notas de um
aluno, fornecidas pelo usu ́ario via teclado.  Se as notas n ̃ao forem
suficientes para o aluno passar direto, o programa deve capturar a nota
da terceira prova, tamb ́em fornecida via teclado.  Como sa ́ıda, o programa
deve imprimir a m ́edia final do aluno, seguida da mensagem “Aprovado”
ou “Reprovado”, conforme o crit ́erio descrito aqui.
--]]

print("Insira a nota da P1:")
p1 = io.read("*n")

print("Insira a nota da P2:")
p2 = io.read("*n")

media = (p1 + p2 / 2)

if media >= 5 and p1 >=3 and p2 >= 3 then
  print("Média final:", media, "Aprovado!")
  
else
  print("Insira a nota da P3:")
  p3 = io.read("*n")
  
  if p1 > p2 then
    media = (p3 + p1) / 2
  elseif p2 > p1 then
    media = (p3 + p2) / 2
  end
  
  if media >= 5 then
    print("Média final:",media,"Aprovado!")
  else
    print("Média final:",media,"Reprovado!")
  end
end
