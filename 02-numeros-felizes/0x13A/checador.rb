# frozen_string_literal: true

module NumerosFelizes
  class Checador
    # Métodos de Classe
    class << self
      def checar(numero)
        historico = []

        loop do
          digitos = numero.digits
          numero = Digitos.elevar(digitos)
          numero = Digitos.somar(digitos)

          return true if numero == 1
          return false if historico.include?(numero)

          historico << numero
        end
      end
    end
  end
end
