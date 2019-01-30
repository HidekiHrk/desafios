require_relative './TrianguloRetangulo.rb'

print 'Digite a altura do triângulo: '
tamanho = gets.strip.to_i

puts

puts 'Sólido:'
TrianguloRetangulo.desenhar_solido(tamanho: tamanho)

puts

puts 'Borda:'
TrianguloRetangulo.desenhar_borda(tamanho: tamanho)

puts

puts 'Números:'
TrianguloRetangulo.desenhar_numeros(tamanho: tamanho)