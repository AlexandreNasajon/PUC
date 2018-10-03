function love.load()
    arq = io.open("martinlutherking.txt","r")

    if not arq then 
        print("Nao foi possivel abrir arquivo:",nomearq) 
        return nil 
    end 

    texto = arq:read("*a") 

    contapal = {} 

    string.gsub(texto,"%w+",function (s) 
                            if #s > 4 then -- ignora palavras pequenas 
                                s = string.lower(s) 
                                if contapal[s] then 
                                  contapal[s] = contapal[s]+ 1 
                                else 
                                  contapal[s] = 1 
                                end 
                            end 
                        end) 
  -- armazena palavras num vetor e 

    pals = {} 

    for p, n in pairs(contapal) do 
      pals[#pals+1] = p 
    end -- falta ordenar ordenar vetor 
    -- mostra resultados 

    max = math.min(10, #pals) 

    table.sort (pals , function (a , b) return contapal[a] > contapal[b] end)

    for i = 1, max do 
      print (pals[i], contapal[pals[i]]) 
    end
    arq:close()
end

function love.draw()
    for i = 1, max do 
        love.graphics.newText( Arial.ttf , pals[i] )  
    end 
end
