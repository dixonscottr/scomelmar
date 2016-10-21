require_relative 'config'
require 'json'

module ReportParser

  def self.parse(filename, binder, klass)
    file = open(filename).read
    report_hash_array = JSON.parse(file)
    report_hash_array.each do |report|
      binder.reports << RestaurantReport.new(restaurant)
    end
  end
end

#----Driver-------
klass = RestaurantReport
binder = ReportBinder.new
url = "http://data.cityofnewyork.us/resource/43nn-pn8j.json?zipcode=11211"
ReportParser.parse(url, binder, klass)
# zip_query = "zipcode="

# puts "what is the zipcode you want to search for?"
# user_input = gets.chomp

# json_string_response = open(url + "?" + zip_query + user_input).read

# ruby_hash_response = JSON.parse(json_string_response)

# p ruby_hash_response
# output = File.new("output.txt", "w")
# output.puts(ruby_hash_response)
