# frozen_string_literal: true

require_relative './scanner'

module PortScanner
  print 'Host (IP): '
  host = gets.strip

  print 'Porta inicial: '
  pstart = gets.to_i

  print 'Porta final: '
  pend = gets.to_i

  pstart, pend = pend, pstart if pstart > pend
  range = (pstart..pend)
  scanner = PortScanner.new(host: host, range: range)

  puts 'Este processo pode demorar um pouco...'

  popen = scanner.scan

  if !popen.empty?
    puts 'Portas abertas:'
    popen.each { |port| puts " * #{host}:#{port}" }
  else
    puts "Todas as portas estão fechadas em #{host}."
  end
end
