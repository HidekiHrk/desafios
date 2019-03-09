=begin
Solução desenvolvida por NIO.PY

Entrega: 9/3/19 13:18 BRT

Pontos (base): 30
Pontos adicionais: 0
Pontos (total): 30

Forma(s) de contato:
 - Discord: Nio.py#9066
=end

puts "Numero: "
s = gets.to_i
nums = []

while s != 1
  for i in 2..100000
    if s % i == 0 then
      nums.push(i)
      s = s / i
      break
    end
  end
end

finais = []

for num in nums.dup do
  iguais = 0
  for num2 in nums.dup do 
    if num == num2 then
      iguais += 1
      nums.delete(num2)
    end
  end
  
  if iguais == 1 then
    finais.push(num.to_s)
  elsif iguais != 0 then
    finais.push(num.to_s + "^" + iguais.to_s)
  end
end

puts(finais.join(" x "))