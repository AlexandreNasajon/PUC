def percentual_aprovados( alunos_total , alunos_aprovados ):

    # alunos aprovados/alunos total = x/100

    percentual = str( ( 100 * alunos_aprovados ) / alunos_total )
    
    print( 'O percentual de alunos aprovados é ' + percentual + '%.' )
    
    #respota correta
    # 'resposta: %.1f%%'%( aprovados / total * 100 )

    return

print( "Insira a quantidade total de alunos:" )

alunos = int( input(  ) )

print( "Insira a quantidade de alunos aprovados:" )

aprovados = int( input(  ) )

percentual_aprovados( alunos , aprovados )
