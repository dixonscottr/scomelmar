require_relative 'config'

class Inspector

  attr_reader :binder, :binder_class, :report_class, :url, :parser, :viewer

  def initialize(args = {})
    @binder_class = args.fetch(:binder_class)
    @parser = args.fetch(:parser) #error
    @report_class = args.fetch(:report_class)
    @url = args.fetch(:url)
    @viewer = args.fetch(:viewer)
  end

  def run
    if ARGV[0].downcase == 'zipcode'
      zipcode = ARGV[1]
      search_url = url + "?" + "zipcode=" + zipcode
      restaurant_reports = parser.parse(search_url, report_class)
      binder = binder_class.new(:reports => restaurant_reports)
      binder.reports.each do |report|
        viewer.display_report(report)
      end
    end
  end

end
