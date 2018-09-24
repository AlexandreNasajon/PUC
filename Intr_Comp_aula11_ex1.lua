local S = os.time() 

local disc = {}

function love.load () 
  local w, h = love.graphics.getDimensions() 
  math.randomseed(S) 
  for i = 1 , 150 do
    local r = math.random(10,40) 
    local x = math.random(r,w-r) 
    local y = math.random(r,h-r) 
    local color = {math.random(0,1), math.random(0,1), math.random(0,1)} 
    disc[i] = {x = x, y = y, r = r, color = color}
  end
    love.graphics.setBackgroundColor(0.75,0.75,0.75) 
end 

function love.draw () 
  for i = 1 , 150 do
    love.graphics.setColor(disc[i].color[1], disc[i].color[2], disc[i].color[3]) 
    love.graphics.circle("fill",disc[i].x,disc[i].y,disc[i].r) 
  end
end 

function love.mousepressed (x, y) 
  for i = 1 , #disc do -- Por algum motivo estranho, o código não funciona se i descrescer
    
    -- calcula dist^ancia do ponto selecionado pelo mouse ao centro do disco: 
    
      if math.sqrt((x - disc[i].x)^2 + (y - disc[i].y)^2) < disc[i].r then 
        -- nesse caso o ponto (x,y) est´a dentro do disco:

        if pos then
          
          --retorna as cores originais do disco anterior
          disc[pos].color[1] = color_1
          disc[pos].color[2] = color_2
          disc[pos].color[3] = color_3
        end
        
        --guarda posição do disco
        pos = i
      
        --guarda cores do disco
        color_1 = disc[i].color[1]
        color_2 = disc[i].color[2]
        color_3 = disc[i].color[3]
        
        --muda a cor do disco pra vermelho
        disc[i].color[1] = 1
        disc[i].color[2] = 0
        disc[i].color[3] = 0
        
        disc.selected = true
        
      end
  end
end

function love.keypressed ( key , scancode , isrepeat )
  
  if disc.selected then
    
    love.keyboard.setKeyRepeat(true) --pode manter tecla pressionada
    
    if key == "right" then
      disc[pos].x = disc[pos].x + 10
    elseif key == "left" then
      disc[pos].x = disc[pos].x - 10
    elseif key == "up" then
      disc[pos].y = disc[pos].y - 10
    elseif key == "down" then
      disc[pos].y = disc[pos].y + 10
    end
  
  end
  
end
