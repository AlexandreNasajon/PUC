function love.load()
  
end
function love.draw()
  love.graphics.setBackgroundColor(0.5,0.5,0.5)
  local w, h = love.graphics.getDimensions()
  love.graphics.setColor(0,0.5,0)
  love.graphics.rectangle("fill",100,100,w-200,h-200)
  love.graphics.setColor(1,1,1)
  local cronos = os.date("*t")
  local st = string.format( "%d horas %d minutos %d segundos" , cronos.hour , cronos.min , cronos.sec )
  local fonte = love.graphics.newFont("Arial.ttf",32)
  local texto = love.graphics.newText(fonte,"")
  texto:set ( st )
  local tw, th = texto:getDimensions()
  love.graphics.draw(texto, (w-tw)/2, (h-th)/2)
end
