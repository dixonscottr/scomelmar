require_relative 'config'

class RestaurantViewer < RestaurantReport
  def display_report(report)
    critical_flag == "Critical" ? critical_flag = " ☠️ " : critical_flag = " 👍 "
    puts <<-REPORT
    INCIDENT REPORT:

    #{dba}
    Address: #{building} #{street}, #{zipcode}
    Borough: #{boro}
    Phone: #{phone}
    ----------------
    Cuisine: #{cuisine_description}
    Critical? #{critical_flag}
    Grade: #{grade}
    Grade Date: #{grade_date}
    Violation Description: #{violation_description}
    Building: #{building}

    REPORT
  end
end

restaurant = RestaurantViewer.new
restaurant.display_report(report)

