# frozen_string_literal: true

require 'socket'
require 'timeout'

module PortScanner
  class PortScanner
    def initialize(host:, range:)
      @host  = host
      @range = range
    end

    def scan
      popen = []
      @range.each { |port| popen << port if port_open?(port) }
      popen
    end

    private

    def port_open?(port)
      Socket.tcp(@host, port, connect_timeout: 3)
    rescue Errno::ETIMEDOUT
      false
    end
  end
end
