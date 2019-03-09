--[===[
Solução desenvolvida por NIO.PY

Entrega: 9/3/19 13:18 BRT

Pontos (base): 30
Pontos adicionais: 0
Pontos (total): 30

Forma(s) de contato:
 - Discord: Nio.py#9066
]===]

function main()
  function table.copy(t)
    local u = { }
    for k, v in pairs(t) do u[k] = v end
    return setmetatable(u, getmetatable(t))
  end

  function tablefind(x,tab)
    for i, item in pairs(tab) do
      if item == x then
        return i
      end
    end
  end

  io.write('Numero: ')
  s = io.read("*n")
  local nums = {}
  while s ~= 1 do
    for i=2,1000000 do
      if s % i == 0  then
        table.insert(nums,i)
        s = s / i
        break
      end6
    end
  end

  local final = {}

  for i,num in pairs(table.copy(nums)) do
    local iguais = 0


    for i2,num2 in pairs(table.copy(nums)) do
      if num2 == num then
        iguais = iguais + 1
        table.remove(nums,tablefind(num2,nums))
      end
    end

    if iguais ==  1 then
      table.insert(final,tostring(num))
    elseif iguais ~= 0 then
      table.insert(final,tostring(num) .. "^" .. tostring(iguais))
    end
  end
  print(tostring(table.concat(final," x ")))
end

main()