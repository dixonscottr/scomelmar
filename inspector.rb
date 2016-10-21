class Inspector

  attr_reader :binder, :binder_class, :report_class, :url, :parser

  def initialize(args = {})
    @binder_class = args.fetch(:binder_class)
    @parser = args.fetch(:parser) #error
    @report_class = args.fetch(:report_class)
    @url = args.fetch(:url)
  end

  def run
    binder = binder_class.new
    if ARGV[0].downcase == 'zipcode'
      zipcode = ARGV[1]
      search_url = url + "?" + "zipcode=" + zipcode
      parser.parse(search_url, binder)
    end
    # binder.reports.each {|shop| puts shop.dba}
  end

end
