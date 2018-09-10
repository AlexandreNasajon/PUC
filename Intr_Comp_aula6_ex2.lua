math.randomseed(os.time())

function jogada ( tentativas_restantes , numero_correto )
    
    if tentativas_restantes == 0 then
      print( "Acabaram suas tentativa(s)." )
      return
    
    else
        print( "O número da sorte (entre 1 e 1024) foi gerado! Restam-lhe "..tentativas_restantes.." tentativas." )
    
        local input = io.read("*n")
    
        if input == numero_correto then
      
            print(0)
            print("Tentativas usadas: "..tentativas_restantes , "Número da sorte: "..numero_correto )
            return
      
        elseif input < numero_correto then
      
            print(1)
            return jogada ( tentativas_restantes - 1 , numero_correto )
    
        elseif input > numero_correto then
      
            print(-1)
            return jogada ( tentativas_restantes - 1 , numero_correto )
        
        end
    end
end

function cpu_adivinha( tentativas_restantes , min , max )

    local cpu_tentativa

    local dica

    if tentativas_restantes == 0 then
        print( "Acabaram as tentativas do computador. Você ganhou!" )
        return
    
    else

        --não otimizado
        --cpu_tentativa = math.random( min , max )

        --otimizado
        cpu_tentativa = math.floor( (min + max) / 2 )
      
        print( cpu_tentativa )
    
        dica = io.read("*n")

        if dica == 1 then

            local min = cpu_tentativa + 1

            return cpu_adivinha( tentativas_restantes - 1 , min , max )

        elseif dica == -1 then

            local max = cpu_tentativa - 1

            return cpu_adivinha( tentativas_restantes - 1 , min , max )

        elseif dica == 0 then
      
            print("O computador acertou! Foram necessárias "..21 - tentativas_restantes.." tentativas." )
      
        end
    end
end

print("Jogo de adivinhação")
print("Um jogador escolhe um número entre 1 e 1024 e outro jogador tem até 20 tentativas para adivinhar o número. A cada tentativa errada, o jogador que escolheu o número deve responder -1 se o número escolhido for menor do que o número fornecido na tentativa da vez, 1 se for maior e 0 se for igual.")
print("Quem tentará adivinhar?")
print("0 - O usuário")
print("1 - O computador")

while true do

    local game_mode = io.read("*n")

    if game_mode == 0 then
    
        lucky_number = math.random( 1 , 1024 )

        jogada( 20 , lucky_number )

        return false
    
    elseif game_mode == 1 then

        cpu_adivinha( 20 , 1 , 1024 )

        return false
    
    end
end
