traducao = {a = 'c', b = 'd', c = 'a', d = 'm'}

function codifica (str , tbl)
    local new = ""
    local i = 1
    
    while i <= #str do
        
        local letra = str:sub(i,i)
        
        if tbl[letra] then 
            letra = tbl[letra]
        end
        new = new..letra
        i = i + 1
    end
    return new
end

print(codifica("abderfraab" , traducao))
