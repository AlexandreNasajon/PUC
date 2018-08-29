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

lucky_number = math.random(1,1024)

jogada( 20 , lucky_number )
