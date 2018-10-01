local dados = 
{
  { nome = "Edvaldo Nogueira",
    tempo = "2",
    cidade = "Aracaju"},
  { nome = "Zenaldo Coutinho",
    tempo = "5",
    cidade = "Belem"},
  { nome = "Alexandre Kalil",
    tempo = "2",
    cidade = "Boa Vista"},
  { nome = "Teresa Sutita",
    tempo = "5",
    cidade = "Boa Vista"},
  { nome = "Marquinhos Trad",
    tempo = "2",
    cidade = "Campo Grande"},
  { nome = "Emanuel Pinheiro",
    tempo = "2",
    cidade = "Cuiabá"}
}

local texto = [[ 
Prezado <nome>,

  Gostaríamos de parabenizá-lo pelo trabalho que vem desenvolvendo 
nos últimos <tempo> anos na cidade de <cidade>.

saudações,
Alexandre
]]

function substitui (str , tbl)
      local res = str:gsub("<(.-)>",
                            function (rotulo)
                                return tbl[rotulo]
                            end
                          )
      return res
end

for i = 1 , #dados do
    print(substitui (texto , dados[i]))
end
