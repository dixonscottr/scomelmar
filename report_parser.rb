require_relative 'config'
require 'json'

module ReportParser

  def self.parse(filename, klass)
    file = open(filename).read
    report_hash_array = JSON.parse(file)
    report_hash_array.map do |report|
      klass.new(report)
    end
  end
end
