local M = {}

AlphabetSmall = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
AlphabetLarge = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}

local function Spaceless(str)
  return string.gsub(str, "%s+", "")
end

local funnyText = Spaceless("I SUCK big balls \n \n bcdefghi")

M.IoA =function(table, value)
  --local found = false
  for i, v in pairs(table) do
    if v == value then
      return i
    end
  end
end

M.SimulateHop = function(text)
  local pos1 = 1
  local pos2 = 2
  while #text > pos1 and #text > pos2 do
    print(string.sub(text,Pos1,Pos1))
    if M.IoA(AlphabetSmall,string.sub(text,Pos1,Pos1)) == nil then
      Pos1 = Pos1 + M.IoA(AlphabetLarge,string.sub(text,Pos1,Pos1))
    else
      Pos1 = Pos1 + M.IoA(AlphabetSmall,string.sub(text,Pos1,Pos1))
    end
  end
end

print(M.IoA(AlphabetSmall,"b"))
M.SimulateHop(funnyText)

return M
