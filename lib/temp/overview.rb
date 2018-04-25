class Overview < Request
    
    def initialize(urls)
        @urls = urls
    end
    
    
    def visit_each_page
        @urls.each do |url|
            request = Request.new(url)
            
            page = request.get_page
            
            yield
            
            overview_fields = OverviewFields.new(page)
            break if overview_fields.current_page_nr == overview_fields.nr_of_pages # sometimes there are less than 500 results (17 pages)
        end
    end

end