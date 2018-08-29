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

function cpu_adivinha( tentativas_restantes , dica , cpu_tentativa )
  
  if tentativas_restantes == 0 then
      print( "Acabaram as tentativas do computador. Você ganhou!" )
      return
    
  else
    
    if not dica then
      
      local cpu_tentativa = math.random(1,1024)
      
      print( cpu_tentativa )
    
      local dica = io.read("*n")
    
      return cpu_adivinha( tentativas_restantes - 1 , dica , cpu_tentativa)
    
    elseif dica == 1 then
      
      local cpu_tentativa = math.random(1,1024)
      
      print( cpu_tentativa )
    
      local dica = io.read("*n")
    
      return cpu_adivinha( tentativas_restantes - 1 , dica , cpu_tentativa )
      
    elseif dica == -1 then
      
      local cpu_tentativa = math.random(1,1024)
    
      print( cpu_tentativa )
    
      local dica = io.read("*n")
    
      return cpu_adivinha( tentativas_restantes - 1 , dica , cpu_tentativa )
    
    elseif dica == 0 then
      
      print("O computador acertou! Foram necessárias "..tentativas_restantes.." tentativas." )
      
    end
  end
end

print("Jogo de adivinhação")
print("Um jogador escolhe um número entre 1 e 1024 e outro jogador tem até 20 tentativas para adivinhar o número. A cada tentativa errada, o jogador que escolheu o número deve responder -1 se o número escolhido for menor do que o número fornecido na tentativa da vez, 1 se for maior e 0 se for igual.")
print("Quem tentará adivinhar?")
print("0 - O usuário")
print("1 - O computador")

local game_mode = io.read("*n")

if game_mode == 0 then
  
  lucky_number = math.random(1,1024)

  jogada( 20 , lucky_number )
  
elseif game_mode == 1 then
  
  
  
end
