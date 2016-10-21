class RestaurantReport
    attr_reader :cuisine_description, :dba, :boro, :grade_date, :grade,
                :violation_description, :building, :zipcode, :phone,
  def initialize(args = {})
    @cuisine_description = args.fetch("cuisine_description", "")
    @dba = args.fetch("dba", "")
    @record_date = args.fetch("record_date", "")
    @boro = args.fetch("boro", "")
    @inspection_date = args.fetch("inspection_date", "")
    @building = args.fetch("building", "")
    @zipcode = args.fetch("zipcode", "")
    @score = args.fetch("score", "")
    @phone = args.fetch("phone", "")
    @street = args.fetch("street", "")
    @grade = args.fetch("grade", "")
    @critical_flag = args.fetch("critical_flag", "")
    @camis = args.fetch("camis", "")
    @action = args.fetch("action", "")
    @violation_code = args.fetch("violation_code", "")
    @violation_description = args.fetch("violation_description", "")
    @grade_date = args.fetch("grade_date", "")
    @inspection_type = args.fetch("inspection_type", "")
  end


  def report_viewer
    #heredoc here?
    #critical flag?
  end

  def make_pretty_word(ugly_word)
    #turn all caps to capitalizing words
    # use regex to find every letter after a space and capitalize
  end

  def insert_hyphens(number)
    # formats phone number regex :)
  end

end
