class TrianguloRetangulo
  class << self
    def desenhar_solido(tamanho:, caractere: '*')
      validar(tamanho)

      1.upto(tamanho) do |n|
        1.upto(n) { print '*' }
        puts
      end
    end

    def desenhar_borda(tamanho:, caractere: '*')
      validar(tamanho)

      1.upto(tamanho) do |n|
        1.upto(n) do |o|
          break if n == tamanho
          o == 1 || o == n ? print(caractere) : print(' ')
        end

        n.times { print caractere } if n == tamanho

        puts if n > 0
      end
    end

    def desenhar_numeros(tamanho:)
      validar(tamanho)

      1.upto(tamanho) do |n|
        1.upto(n) { |o| print o }
        puts
      end
    end

    private

    def validar(tamanho)
      raise 'Erro: o tamanho do triângulo precisa ser maior que 1' if tamanho <= 1
    end
  end
end