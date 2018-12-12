# Carta
class Carta
  attr_reader :naipe, :figura

  def initialize(naipe, figura)
    @naipe = naipe
    @figura = figura
  end

  def to_s
    "#{figura}#{naipe}"
  end
end
