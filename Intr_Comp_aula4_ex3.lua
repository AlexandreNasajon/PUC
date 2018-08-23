function som(n)
  
  if n > 0 then 
  
    return 1/2^n + som(n-1) 
  
  else
  
    return 0
    
  end
end
