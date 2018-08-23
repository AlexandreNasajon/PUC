function pot(x,y)

  if y == 0 then return 1
  
  if y > 1 then return x*pot(x,y-1) else return x end

end
