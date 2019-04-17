require_relative 'operacoes'

print 'Digite ao menos dois números (separe com espaços): '
numeros = gets.strip.split(' ').map { |n| Integer(n) }
abort ' > [erro] Digite ao menos dois números' if numeros.length < 2

puts "MMC(#{numeros.join(', ')}) = #{Operacoes.mmc(*numeros)}"