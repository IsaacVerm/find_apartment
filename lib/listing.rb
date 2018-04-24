class Listing
    
    def initialize(query_strings)
        @query_strings = query_strings
        
        @max_nr_of_pages = 17 # 500 results
    end
    
    def get_page(query_string, page_nr)
        Nokogiri::HTML(RestClient.get(query_string + "&page=" + page_nr))
    end
    
    def save_all_listings
        range_of_page_nrs = create_range_of_page_nrs
        
        @query_strings.each do |query_string|
            range_of_page_nrs.each do |page_nr|
                page = get_page(query_string, page_nr)
                
                fields = Fields.new(page)
                
                break if fields.current_page_nr == fields.nr_of_pages # sometimes there are less than 500 results (17 pages)
            end
        end
    end
    
end
