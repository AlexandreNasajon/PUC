local TAM = 700

function love.load ()
  love.window.setTitle("Relógio")
  love.window.setMode(TAM,TAM)
  love.graphics.setBackgroundColor(1,1,1)
end

local function desenha_circulo ()
  love.graphics.push()
  love.graphics.setColor( 0 , 0 , 0 )
  love.graphics.circle ("line", 0 , 0 , 0.5)
  love.graphics.pop()
end

local function desenha_ponteiro_hora()
  love.graphics.push()
  love.graphics.rotate( ( 2 * math.pi / 12 ) * cronos.hour * -1 )
  love.graphics.setColor( 1 , 1 , 1 ) -- ponteiro branco
  love.graphics.rectangle( "fill" , 0 , 0 , 0.05 , 0.5 ) -- menor ponteiro
  love.graphics.pop()
end

local function desenha_ponteiro_min()
  love.graphics.push()
  love.graphics.rotate( ( 2 * math.pi / 60 ) * cronos.min * -1  )
  love.graphics.setColor( 1 , 1 , 0 ) -- amarelo
  love.graphics.rectangle( "fill" , 0 , 0 , 0.03 , 0.7 ) -- ponteiro médio
  love.graphics.pop()
end

local function desenha_ponteiro_sec()
  love.graphics.push()
  love.graphics.rotate( ( 2 * math.pi / 60 ) * cronos.sec * -1  )
  love.graphics.setColor( 1 , 0 , 1 ) -- rosa
  love.graphics.rectangle( "fill" , 0 , 0 , 0.01 , 0.95 ) -- menor ponteiro
  love.graphics.pop()
end

function love.draw ()
  cronos = os.date("*t")
  love.graphics.push()
  love.graphics.translate(TAM/2,TAM/2)
  love.graphics.scale(TAM/2,-TAM/2)
  desenha_circulo()
  desenha_ponteiro_hora()
  desenha_ponteiro_min()
  desenha_ponteiro_sec()
  --love.timer.sleep(1/10)
  love.graphics.pop()
end
