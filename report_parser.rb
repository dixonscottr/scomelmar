require_relative 'config'
require 'json'

module ReportParser

  def self.parse(filename, binder, klass)
    file = open(filename).read
    report_hash_array = JSON.parse(file)
    report_hash_array.each do |report|
      binder.reports << klass.new(report)
    end
  end
end
