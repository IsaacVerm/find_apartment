require 'rest-client'

class Requests
    
    def initialize(query_strings)
        @query_strings = query_strings
        
        max_nr_of_pages = 17 # 500 results
        @range_of_pages = (1..max_nr_of_pages).map(&:to_s) 
    end
    
    def get_page(query_string, page_nr)
        page = RestClient.get(query_string + "&page=" + page)
    end
    
    def get_all_listings
        listings = Array.new
        
        @query_strings.each do |query_string|
            @range_of_pages.each do |page_nr|
                page = get_page(query_string, page_nr)
                
                listings << page
                
                fields = Fields.new(page)
                break if fields.current_page_nr == fields.nr_of_pages
            end
        end
    end
    
end
