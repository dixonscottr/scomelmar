class ReportBinder

  attr_reader :reports

  def initialize(args = {})
    @reports = args.fetch(:reports, [])
  end

  def report_count
    reports.length
  end

  def alphabetize
    reports.sort! do |report_a, report_b|
      report_a.dba <=> report_b.dba
    end
  end

end
