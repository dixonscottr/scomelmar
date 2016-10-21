require_relative 'config'

class RestaurantViewer
  def self.display_report(report)

    report.critical_flag == "Critical" ? c_flag = " ☠️ " : c_flag = " 👍 "

    puts <<-REPORT
    INCIDENT REPORT #{c_flag}:

    #{report.dba}
    ================
    Grade: #{report.grade}
    Address: #{report.building} #{report.street}, #{report.zipcode}
    Borough: #{report.boro}
    Phone: #{report.phone}
    ----------------
    Cuisine: #{report.cuisine_description}
    Date of Inspection: #{report.grade_date}
    Violation Description: #{report.violation_description}

    ~~~END OF REPORT~~~
    REPORT
  end

  # def make_pretty_word(ugly_word)
  #   ugly_word.split.map {|word| word.capitalize}.join(' ')
  # end

  # def format_phone_number(phone)
  #   if phone.match(/\d{10}/)
  #     area_code = phone.slice(0..2)
  #     middle_nums = phone.slice(3..5)
  #     end_nums = phone.slice(6..9)
  #     [area_code, middle_nums, end_nums].join('-')
  #   end
  # end

end
