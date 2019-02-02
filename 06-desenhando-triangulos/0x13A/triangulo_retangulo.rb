class TrianguloRetangulo
  attr_accessor :altura

  def initialize(altura:)
    @altura = altura
    validar_altura
  end

  def desenhar_solido(caractere: '*')
    1.upto(@altura) { |n| 1.upto(n) { print caractere } && puts }
  end

  def desenhar_borda(caractere: '*')
    puts caractere
    (@altura - 2).times { |n| puts caractere + ' ' * n + caractere }
    puts caractere * @altura if @altura > 1
  end

  def desenhar_numeros
    1.upto(@altura) { |n| 1.upto(n) { |o| print o } && puts }
  end

  private

  def validar_altura
    raise 'A altura do triângulo deve ser maior que 1' if @altura <= 1
  end
end
