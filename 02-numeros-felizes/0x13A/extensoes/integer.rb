# frozen_string_literal: true

module NumerosFelizes
  module Extensoes
    # Monkey Patch para buscar
    # os digitos de um número
    # inteiro
    module Integer
      def digits
        self.to_s.split('').map(&:to_i)
      end
    end
  end
end

Integer.include NumerosFelizes::Extensoes::Integer
