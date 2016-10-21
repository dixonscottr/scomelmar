require_relative 'config'


inspector = Inspector.new(binder_class: ReportBinder, parser: ReportParser, report_class: RestaurantReport, url: 'http://data.cityofnewyork.us/resource/43nn-pn8j.json', viewer: RestaurantViewer)

inspector.run
  # NYC_DOH_URL = 'http://data.cityofnewyork.us/resource/43nn-pn8j.json'
