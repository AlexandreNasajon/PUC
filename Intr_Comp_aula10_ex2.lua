 function tabuleiro()
    for i = 1 , 8 do
        for k = 1 , 8 do
            if (i + k) % 2 == 0 then 
                love.graphics.setColor(25/255,42/255,81/255)
                love.graphics.rectangle( "fill" , 10*i , 10*k , 100 , 100)
                
            else
                love.graphics.setColor(150/255,122/255,161/255)
                love.graphics.rectangle( "fill" , 10*i , 10*k , 100 , 100)
            end
        end
    end
end

function love.load()
  
end

function love.draw()
    
  tabuleiro()
    --love.graphics.circle()
end
