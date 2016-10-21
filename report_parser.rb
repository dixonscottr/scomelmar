require_relative 'restaurant_report'
require 'json'
require 'open-uri'

module ReportParser

  NYC_DOH_URL = 'http://data.cityofnewyork.us/resource/43nn-pn8j.json'

  def self.parse(filename, report_binder, klass)
    file = open(filename).read
    report_hash_array = JSON.parse(file)
    report_hash_array.each do |report|
      report_binder.reports << klass.new(report)
    end
  end
end

#----Driver-------

ReportParser.parse(ReportParser::NYC_DOH_URL)
# url = "https://data.cityofnewyork.us/resource/43nn-pn8j.json"
# zip_query = "zipcode="

# puts "what is the zipcode you want to search for?"
# user_input = gets.chomp

# json_string_response = open(url + "?" + zip_query + user_input).read

# ruby_hash_response = JSON.parse(json_string_response)

# p ruby_hash_response
# output = File.new("output.txt", "w")
# output.puts(ruby_hash_response)
