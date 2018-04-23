require 'rest-client'

module Request
    
    IMMOWEB_URL = "https://www.immoweb.be/nl/zoek/appartement/te-huur/"
    
    def get_page
        RestClient.get(IMMOWEB_URL + "brussel?minprice=800&maxprice=1000&minroom=2&maxroom=2&page=2")
    end

    def maximum_number_of_pages
    end
    
    def get_all_pages
    end
    
end
