function love.load()
    fonte = love.graphics.newFont("Arial(1).ttf",52)
    texto = love.graphics.newText(fonte,"")
    w, h = love.graphics.getDimensions()
end
function love.draw()
  love.graphics.setBackgroundColor(1,1,1)
  --circulo branco
  love.graphics.setColor(0,0,0)
  love.graphics.circle("line",400,270,80)
  --circulo azul
  love.graphics.setColor(0,0,1)
  love.graphics.circle("fill",400,270,60)
  --circulo pequeno azul
  love.graphics.setColor(0,0,1)
  love.graphics.circle("fill",470,220,20)
  --circulo pequeno branco
  love.graphics.setColor(1,1,1)
  love.graphics.circle("fill",430,260,20)
  
  love.graphics.setColor(1,1,1)
  local st = string.format( "Lua" )
  texto:set ( st )
  local tw, th = texto:getDimensions()
  love.graphics.draw(texto, (w-tw)/2, (h-th)/2)
end
