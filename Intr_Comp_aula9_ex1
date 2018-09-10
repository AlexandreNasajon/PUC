function primo (n)
    for i = 2 , n-1 do
        if (n % i) == 0 then
            return false
        end
      end
    return true
end

function primos_menores(x)
    for i = 1 , x-1 do
        if primo(i) == true then
            print(i)
        end
    end
end

function primeiros_primos(n)
    i = n
    k = 0
    while i > 0 do
        if primo(k) == true then
            print(k)
            i = i - 1
        end
        k = k + 1
    end
end


print("Insira um valor. Imprimirei todos os números primos menores que o valor escolhido.")
input = io.read("*n")

primos_menores(input)

print("Insira um número x. Imprimirei os x primeiros números primos.")
input = io.read("*n")

primeiros_primos(input)
