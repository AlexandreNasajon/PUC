function mdc_xy(x,y)
    while y ~= 0 do
        r = x % y
        x = y
        y = r
    end
    return x
end

print("Insira x e y:")
print("x:")
x = io.read("*n")
print("y:")
y = io.read("*n")
print(mdc_xy(x , y))
