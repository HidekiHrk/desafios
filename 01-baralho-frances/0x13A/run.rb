require_relative './carta.rb'
require_relative './baralho.rb'

baralho = Baralho.new

puts 'Baralho ordenado:'
baralho.mostrar

puts 'Baralho embaralhado:'
baralho.embaralhar
baralho.mostrar
