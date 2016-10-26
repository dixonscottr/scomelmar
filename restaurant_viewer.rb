require_relative 'config'

class RestaurantViewer
  def self.display_report(report)

    report.critical_flag == "Critical" ? c_flag = " ☠️ " : c_flag = " 👍 "
    # binding.pry
    puts <<-REPORT
    INCIDENT REPORT#{c_flag}:

    #{make_pretty_word(report.dba)}
    ================
    Grade: #{report.grade}
    Address: #{report.building} #{make_pretty_word(report.street)}, #{report.zipcode}
    Borough: #{make_pretty_word(report.boro)}
    Phone: #{format_phone_number(report.phone)}
    ----------------
    Cuisine: #{report.cuisine_description}
    Date of Inspection: #{report.inspection_date}
    Violation Description: #{report.violation_description}

    ~~~END OF REPORT~~~

    REPORT
  end

  def self.make_pretty_word(ugly_word)
    ugly_word.split.map {|word| word.capitalize}.join(' ')
  end

  def self.format_phone_number(phone)
    if phone.match(/\d{10}/)
      area_code = phone.slice(0..2)
      middle_nums = phone.slice(3..5)
      end_nums = phone.slice(6..9)
      [area_code, middle_nums, end_nums].join('-')
    end
  end

end
