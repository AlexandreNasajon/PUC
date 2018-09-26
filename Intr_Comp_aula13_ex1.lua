local discs = {}
local selected = {}

function love.load ()
  w, h = love.graphics.getDimensions()
  local S = os.time()
  -- gera discos
  math.randomseed(S)
  for i = 1, 150 do
    local r = math.random(10,40)
    local x = math.random(r,w-r)
    local y = math.random(r,h-r)
    local color = {math.random(0,1), math.random(0,1), math.random(0,1)}
    table.insert(discs, {r = r, x = x, y = y, color = color})
  end
  
  -- define deslocamento
  delta = math.min (w,h)/10000

  love.graphics.setBackgroundColor(0.75,0.75,0.75)
end

local function overlap (i, j)
  local dx = discs[i].x - discs[j].x
  local dy = discs[i].y - discs[j].y
   print("dx : " .. dx)
   print("dy : " .. dy)
  -- distancia entre os dois centros
  local len = math.sqrt(dx*dx + dy*dy)
  print("len " .. len)
  -- distancia entre os dois discos
  local d = len - (discs[i].r+discs[j].r)
  print("d " .. d)
  if d < 0 then
    -- tem sobreposicao: calcula quanto é em cada eixo:
    local ux = dx*d/len
    print(dx .. "*" .. d .. "//" .. len .. " = " .. ux)
    local uy = dy*d/len
    
    return ux, uy
  else
    return 0, 0
  end
end

function love.update()
  local dx, dy = 0, 0
  if love.keyboard.isDown("right") then
    dx = 1
  elseif love.keyboard.isDown("left") then
    dx = -1
  elseif love.keyboard.isDown("down") then
    dy = 1
  elseif love.keyboard.isDown("up") then
    dy = -1
  elseif love.keyboard.isDown("t") then
    for k , v in pairs(selected) do
            for j , p in pairs(selected) do
                if k ~= j then
                    local ux , uy = overlap( k , j )
                    discs[k].x = discs[k].x - ux/2
                    discs[k].y = discs[k].y - uy/2
                    discs[j].x = discs[j].x + ux/2
                    discs[j].y = discs[j].y + uy/2                    
                end
            end
        end
        
        for k , v in pairs(selected) do
            for j , p in pairs(selected) do
                if discs[k].x + discs[k].r > w then
                    discs[k].x = w - discs[k].r
                elseif discs[k].x < discs[k].r then
                    discs[k].x = discs[k].r
                end
                
                if discs[k].y + discs[k].r > h then
                      discs[k].y = h - discs[k].r
                elseif discs[k].y < discs[k].r then
                      discs[k].y = discs[k].r
                end
            end
        end
    end
  for index,_ in pairs(selected) do
    discs[index].x = discs[index].x + 25*dx*delta
    discs[index].y = discs[index].y + 25*dy*delta
  end
end

function love.draw ()
  for i = 1, #discs do
    if selected[i] then
      love.graphics.setColor(0.5,0,0)
    else
      love.graphics.setColor(discs[i].color[1],discs[i].color[2],discs[i].color[3])
    end
   love.graphics.circle("fill",discs[i].x,discs[i].y,discs[i].r)
  end
end

function love.keypressed (key)
    if key == "space" then
      -- deselecionar tudo!
        selected = {}
        
    elseif key == "r" then
        for k , v in pairs(selected) do
            for j , p in pairs(selected) do
                if k ~= j then
                    local ux , uy = overlap( k , j )
                    discs[k].x = discs[k].x - ux/2
                    discs[k].y = discs[k].y - uy/2
                    discs[j].x = discs[j].x + ux/2
                    discs[j].y = discs[j].y + uy/2                    
                end
            end
        end
        
        for k , v in pairs(selected) do
            for j , p in pairs(selected) do
                if discs[k].x + discs[k].r > w then
                    discs[k].x = w - discs[k].r
                elseif discs[k].x < discs[k].r then
                    discs[k].x = discs[k].r
                end
                
                if discs[k].y + discs[k].r > h then
                      discs[k].y = h - discs[k].r
                elseif discs[k].y < discs[k].r then
                      discs[k].y = discs[k].r
                end
            end
        end
    end
end

function love.mousepressed (x, y, bt)
  for i = #discs, 1, -1 do
    if math.sqrt((x-discs[i].x)^2 + (y-discs[i].y)^2) < discs[i].r then
      selected[i] = true
      break
    end
  end
end
