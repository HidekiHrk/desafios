# frozen_string_literal: true

require_relative './extensoes/integer.rb'
require_relative './digitos.rb'
require_relative './checador.rb'

module NumerosFelizes
  numeros_felizes = []
  achados, i = 0, 0

  while achados < 20
    if Checador.checar(i)
      numeros_felizes << i
      achados += 1
    end

    i += 1
  end

  puts numeros_felizes.join(', ')
end