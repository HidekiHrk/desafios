module Operacoes
  module_function

  def algortimo_euclides(x, y)
    return x if y == 0
    algortimo_euclides(y, x % y)
  end

  def mdc(*numeros)
    numeros.reduce { |x, y| algortimo_euclides(x, y) }
  end

  def mmc(*numeros)
    numeros.reduce { |x, y| x * y / mdc(x, y) }
  end
end