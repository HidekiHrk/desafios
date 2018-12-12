# Baralho
class Baralho
  attr_reader :cartas

  # Criando o baralho
  def initialize
    @cartas = []

    naipes = %w[♣ ♦ ♥ ♠]
    figuras = %w[A 2 3 4 5 6 7 8 9 10 B Q K]

    naipes.each do |naipe|
      figuras.each do |figura|
        @cartas << Carta.new(naipe, figura)
      end
    end
  end

  # Embaralhando o baralho
  # Este método é uma simples implementação
  # do algoritmo Fisher-Yates.
  def embaralhar
    (@cartas.size - 1).downto(1) do |i|
      rnd = rand(i)
      @cartas[rnd], @cartas[i] = @cartas[i], @cartas[rnd]
    end
  end

  # Mostrando o baralho
  def mostrar
    puts @cartas.join(', ')
  end
end
