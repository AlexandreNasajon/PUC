function  palindrome  (s)
local  len  =  string . len (s)
  if  len  ==  0  then  return  true
  else
    
    if string.sub( s , 1 , 1 ) == string.sub( s , len , len ) then
      
      return palindrome( string . sub ( s , 2 , len - 1 ) )
      
    else
      return false
    end
  end
end
local  st  =  io . read ("*l")
if  palindrome  ( st )  then  print  (" palíndrome ")
else  print  (" não   ́e  palíndrome ")
end
