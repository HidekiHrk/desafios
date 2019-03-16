# frozen_string_literal: true

require 'prime'

# É importante notar que o Ruby já possuí
# um algoritmo para obter os fatores primos
# de um número. Isto é só um reimplementação.

module Fatoracao
  module Extensoes
    module Integer
      def fatorar
        numero = self

        raise 'O número precisa ser 2 ou maior que 2' if numero < 2
        return { numero => 1 } if Prime.prime? numero

        primos  = (2..numero).select { |n| Prime.prime? n }
        fatores = Hash.new 0

        primos.each do |n|
          while numero % n == 0
            fatores[n] += 1
            numero /= n
          end
        end

        fatores
      end
    end
  end
end

Integer.include Fatoracao::Extensoes::Integer
