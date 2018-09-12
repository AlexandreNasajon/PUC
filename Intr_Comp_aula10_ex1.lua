--Função mdc iterativo
function mdc1(x,y)
    while y ~= 0 do
        r = x % y
        x = y
        y = r
    end
    return x
end

--Função mdc recursivo
function mdc2(x,y)
    if y == 0 then
        return x
    else
        return mdc2(y , x % y)
    end
end
--MDC iterativo
print("Insira x e y:")
print("x:")
x = io.read("*n")
print("y:")
y = io.read("*n")
print(mdc1(x , y))

--MDC recursivo
print("Insira x e y:")
print("x:")
x = io.read("*n")
print("y:")
y = io.read("*n")
print(mdc2(x , y))
