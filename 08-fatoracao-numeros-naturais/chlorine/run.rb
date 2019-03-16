# frozen_string_literal: true

require_relative 'extensoes/Integer'

module Fatoracao
  numero = 0
  loop do
    print 'Digite um número maior que 1: '
    numero = gets.to_i

    break if numero > 1
  end

  fatores       = numero.fatorar
  multiplicacao = ''.dup

  fatores.each_with_index do |(fator, recorrencia), i|
    base     = fator
    expoente = recorrencia == 1 ? '' : "^#{recorrencia}"
    potencia = "#{base}#{expoente}"
    simbolo  = i.zero? ? '' : ' x '

    multiplicacao << "#{simbolo}#{potencia}"
  end

  puts <<~HEREDOC

    Fatoração de #{numero}:
      #{multiplicacao}
  HEREDOC
end
