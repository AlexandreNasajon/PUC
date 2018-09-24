local S = os.time() 

local disc = {}

local selected = {}

local num = 0

local sel1
local sel2


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
    
    if selected[i] == true then
      --muda a cor do disco pra vermelho
      love.graphics.setColor(1,0,0) 
    else
      love.graphics.setColor(disc[i].color[1], disc[i].color[2], disc[i].color[3]) 
    end
    love.graphics.circle("fill",disc[i].x,disc[i].y,disc[i].r) 
  
  end
end

function overlap (i , j)
  local dx = disc[i].x - disc[j].x
  local dx = disc[i].y - disc[j].y
  --distancia entre os dois centros
  local len = math.sqrt(dx*dx + dy*dy)
  --distancia entre os dois discos
  local d = len - (disc[i].r + disc[j].r)
    
  if d < 0 then
    --tem sobreposicao: calcula quanto é em cada eixo:
    local ux = dx*d/len
    local uy = dy*d/len
    return ux , uy
  else
    return 0 , 0
  end
end

function love.mousepressed (x, y) 
  for i = #disc , 1 , -1 do
    
    -- calcula dist^ancia do ponto selecionado pelo mouse ao centro do disco: 
    
      if math.sqrt((x - disc[i].x)^2 + (y - disc[i].y)^2) < disc[i].r then 
        -- nesse caso o ponto (x,y) est´a dentro do disco:
        
            if selected[i] == true then
                selected[i] = false
                num = num - 1
                sel[i] = nil
            else
              if num < 2 then
                  selected[i] = true
                  num = num + 1
                  sel[i] = disc[i]
              end
            end
        
        break
      end
  end
end

function love.keypressed ( key , scancode , isrepeat )
    
    love.keyboard.setKeyRepeat(true) --pode manter tecla pressionada
    
    for i = 1 , #disc do
        if selected[i] then
            if key == "right" then
              disc[i].x = disc[i].x + 10
            elseif key == "left" then
              disc[i].x = disc[i].x - 10
            elseif key == "up" then
              disc[i].y = disc[i].y - 10
            elseif key == "down" then
              disc[i].y = disc[i].y + 10
            elseif key == "space" then
                for i = 1 , #disc do
                    --tira da seleção
                    selected[i] = false
                    num = 0
                    sel1 = nil
                    sel2 = nil
                end
            elseif key == "a" then
                if overlap ( sel1 , sel2 )
                    
                end
            end
        end
    end
end
