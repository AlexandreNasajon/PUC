local text = {}

local cores = {
  "black", "white", "red", "green", "light_green", 
  "blue", "light_blue",
  black = {0, 0, 0}, white = {1, 1, 1},
  red = {1, 0, 0}, green = {013, 0.47, 0.18},
  light_green = {0.15, 0.75, 0.25},
  blue = {0.25, 0.1, 0.85},
  light_blue = {0.1, 0.7, 0.85}
}
local ancoras = { -- valores válidos para ancoras:
  no = true, n = true, o = true, c = true, e = true,
  so = true, s = true, se = true}

text.new = function (fontname , size , str)
  local meutexto = {}
  local fonte = love.graphics.newFont(fontname .. ".ttf" , size)
  local texto = love.graphics.newText(fonte , str)
  meutexto.texto = texto
  meutexto.cor = cores.black
  meutexto.ancora = "no"
  return meutexto
end
--[[
text.setString = function (obj , str)
    obj.texto:set(str)
end

text.setColor = function (obj , r , g , b)
    if type(r) == "number" then
        obj.cor[1] = r
        obj.cor[2] = g
        obj.cor[3] = b
    end
end

text.setAnchor = function (obj , value)
    obj.ancora = value
end
]]
text.getDimensions = function (obj)
    w , h = obj.texto:getDimensions()
    return w , h
end

text.draw = function (obj , x , y)
    love.graphics.setColor(obj.cor)
    love.graphics.draw(obj.texto , x , y)
end

  
return text
