# frozen_string_literal: true

module NumerosFelizes
  module Digitos
    def self.elevar(digitos)
      digitos.map! { |digito| digito ** 2 }
    end

    def self.somar(digitos)
      digitos.reduce(:+)
    end
  end
end