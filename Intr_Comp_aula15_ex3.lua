local text = {}

local cores = {
  preto = {0,0,0},
  azul = {0,0,1},
  verde = {0,1,0},
  vermelho = {1,0,0}
}

math.randomseed(os.time())

local funcoes = {}

funcoes.new = function (fontname , size , str)
  local meutexto = {}
  local fonte = love.graphics.newFont(fontname .. ".ttf" , size)
  local texto = love.graphics.newText(fonte , str)
  meutexto.texto = texto
  meutexto.cor = cores.preto
  meutexto.ancora = "no"
  return meutexto
end

funcoes.setString = function (obj , str)
    obj.texto:set(str)
end

funcoes.setColor = function (obj , r , g , b)
    if type(r) == "number" then
        obj.cor[1] = r
        obj.cor[2] = g
        obj.cor[3] = b
    end
end

funcoes.setAnchor = function (obj , value)
    obj.ancora = value
end

funcoes.getDimensions = function (obj)
    w , h = love.graphics.getDimensions(obj)
    return w , h
end

funcoes.draw = function (obj , x , y)
    love.graphics.setColor(obj.cor)
    love.graphics.draw(obj.texto , x , y)
end

  

return funcoes
