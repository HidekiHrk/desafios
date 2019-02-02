require_relative './triangulo_retangulo.rb'

print 'Digite a altura do triângulo: '
altura = gets.strip.to_i

triangulo = TrianguloRetangulo.new(altura: altura)

puts 'Sólido:'
triangulo.desenhar_solido

puts 'Borda:'
triangulo.desenhar_borda

puts 'Números:'
triangulo.desenhar_numeros